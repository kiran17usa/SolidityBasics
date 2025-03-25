//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract functions{

    function remoteControlOpen(bool closedDoor) public returns(bool){
        
    }
    function addValues() public pure returns(uint){
        uint a= 2;
        uint b =3;
        uint result = a+b;
        return result;
    }

    function multiplyCalculator(uint a, uint b) public view returns(uint){
        uint result = a * b;
        return result;
    }
}