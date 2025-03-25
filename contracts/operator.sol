//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract myOperator {
    function calculator()public pure returns(uint){
        uint a =5;
        uint b = 8;
        uint result;
        result = a%b;
        return result;

    }
}