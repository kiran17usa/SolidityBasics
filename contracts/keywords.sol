//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;



contract MyContract{
    uint value;
    //view - do not modify the state(read only) and pure
    function getValue() external view returns(uint){
        return value;
    }
    //do not modify or read just a blind calculation or something
    function getNewValue() external pure returns(uint){
        //return value;
        return 3+3;
    }
    //the below function modifies the state
    function setValue(uint _value)external{
        value = _value;

    }
    function valuePlusThree() external view returns(uint){
        return value+3;
    }
    function multiply()external pure returns(uint){
        return 3*7;
    }
}