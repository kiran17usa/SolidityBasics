//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Sum{
    uint public var1;
    uint public var2;
    uint public sum;

    function set(uint x, uint y) public{
        var1 = x;
        var2 = y;
        sum = var1+var2;
    }

    function get() public view returns(uint) {
        return sum;
    }
}