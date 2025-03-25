//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract logicalOperators{
    uint a =17;
    uint b =32;
    
    function logic() public view returns(uint){
        uint result = 0;
        if(a<b && a==17){
            result =a+b;

        }
    return result;
    }
    function logic1()public view returns(uint){
        uint result = 0;
        if(b>a && a!=b){
            result =a*b;
        }
        return result;
    }
    
}