// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

interface IERC721 {
    function transferFrom(address from, address to, uint tokenId) external;
}

contract EnglishAuction {
    // events
    event Start(uint startTime, uint endTime);
    event Bid(address indexed bidder, uint value);

    // auction state
    bool public started;
    bool public ended;
    uint public endTime;
    uint public highestBid;
    address public highestBidder;
    mapping(address => uint) public allBids;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call the function");
        _;
    }

    // for constructor
    address payable public immutable owner;
    uint public immutable nftId;
    IERC721 public immutable nft;

    constructor(address _nft, uint _nftId) {
        // init values
        // owner and NFT
        owner = payable(msg.sender);
        nft = IERC721(_nft);
        nftId = _nftId;
    }

    function bid() external payable {
        // validations
        require(started, "Auction has not started");
        require(msg.value > highestBid, "Bid price is lower than the current highest bid");
        require(block.timestamp < endTime, "Auction has ended");

        // highest bidder, all bids, highest bidder
        allBids[highestBidder] += highestBid;
        highestBid = msg.value;
        highestBidder = msg.sender;

        emit Bid(msg.sender, msg.value);
    }

    function start(uint _openingBid, uint _duration) external onlyOwner {
        // validations
        require(!started, "Auction has already started");

        // update the auction state
        highestBid = _openingBid;
        endTime = block.timestamp + _duration;
        nft.transferFrom(owner, address(this), nftId);
        started = true;

        emit Start(block.timestamp, endTime);
    }

    function end() external onlyOwner {
        // validations
        // highest bidder receive the item
        // owner receives ether
    }

    function withdraw() external {
        // bidder to receive fund from the all bids state
    }
}
