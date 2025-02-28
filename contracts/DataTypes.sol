//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract DataTypes{
    bool public boolean = false;
    int public int_var = -63126;
    string public str = "test purpose";
    bytes1 public b = "P";
    enum my_enum{ testing_, about_, _solid}

    function myEnum() public pure returns(my_enum){
        return my_enum._solid;
    }



}