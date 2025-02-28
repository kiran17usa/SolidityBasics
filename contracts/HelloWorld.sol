//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract HelloWorld{
    string userInput;
    function set(string memory value) public {
        userInput = value;
    }

    function get() public view returns(string memory){
        return userInput;
    }

    function get1() public pure returns(string memory){
        return 'HelloWorld';
    }
}