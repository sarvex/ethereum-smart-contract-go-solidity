// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Expressions {
    function bid(uint _value) public pure{
        require(_value >= 0, "Bid value must be bigger than 0");
    }

    function start() public pure {
        // some code here
        revert("Something went wrong");
    }

    function end(uint _value) public pure {
        // some code here
        assert(_value > 0);
    }
}