//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


//private, public, external, internal
contract scope{
    uint internal data = 10;
    function x() external pure returns(uint){
        uint newData = 25;
        return newData;
    }
    function y() public view returns(uint){
        return data;
    }
}