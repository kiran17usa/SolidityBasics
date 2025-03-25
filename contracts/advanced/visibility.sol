//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

//public - both externally  and internally
//internal - only can be used internally or by derived contracts
//private - can be used internally not by derived contracts
contract A{
    uint public data = 10;
    function x() external pure returns (uint){
        uint newData = 25;
        return newData;
    }
    function l()internal view returns(uint){
        uint newData = data -3;
        return newData;
    }
    function y()public view returns(uint){
        return data;
    }
}
/*
contract B{
    A a = new A();
    function f()public view returns(uint){
        return a.l();
    }
}
*/