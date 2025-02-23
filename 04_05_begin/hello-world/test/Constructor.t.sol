// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import "../src/Constructor.sol";

contract ConstructorTest is Test {
    Constructor public con;

    function testConstructor() public {
        con = new Constructor(2 days);
        assertEq(con.duration(), 2 days);
        assertEq(con.owner(), msg.sender);
    }
}
