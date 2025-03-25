//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract DestructuringFunction{
    uint public changeValue;
    string public tom = 'Hello';
    function f()public pure returns(uint,bool, string memory){
        return (3, true, "world");
    }

    function g() public{
        (changeValue,,tom) = f();
    }


}