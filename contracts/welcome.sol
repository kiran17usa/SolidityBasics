//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract WelcomSolidity{
     constructor()  public {

    }
    function getResult() public pure returns(uint){
        uint a =1;
        uint b=2;
        uint result = a+b;
        return result;
    }
}