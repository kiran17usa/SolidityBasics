//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract ComparisionOperators{
    uint a =6;
    uint b = 6;
    function compare() public view{
        require(a != b, 'That is false');
    }
    function compare1() public view{
        require(a == b, 'That is false');

    }
}