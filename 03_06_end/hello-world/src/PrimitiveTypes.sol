// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract PrimitiveTypes {
    // Value types
    bool public started = true;
    bool public ended = false;

    // uint8 - uint256
    uint public value = 10000000;
    // int8 - int256
    int public change = -10;

    address public addr = 0x3896BB59e2EB6A930B11A3B316AdA386baCb6F25;

    // bytes1 - bytes32
    bytes1 public a = 0xb5;
    bytes2 public b = 0xb5ab;

    enum UserType {
        Admin,
        SuperUser,
        User
    }

    // Reference types
    string public name = "hello";
    uint[] public arr = [1, 2, 3];
    struct Error {
        string message;
        uint code;
    }
}
