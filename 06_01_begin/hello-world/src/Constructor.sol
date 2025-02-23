// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Constructor {
    uint256 public duration;
    address public owner;

    constructor(uint256 _duration) {
        duration = _duration;
        owner = msg.sender;
    }
}
