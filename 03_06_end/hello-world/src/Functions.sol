// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Functions {
    // function def
    function hello() public pure returns (string memory) {
        return "Hello, World!";
    }

    // visibility
    function publicFunc() public {}
    function privateFunc() private {}

    function externalFunc() external {}
    function internalFunc() internal {}

    // mutability modifier
    function viewFunc() public view returns (uint) {
        return block.timestamp; // current block timestamp
    }

    function payableFunc() public payable {
    }

    // function modifiers
    address public owner;

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function ownerFunc() public onlyOwner {
        // function logic here
    }
}