//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


//oracle dynamic feeds
//
contract Oracle{
    address admin;
    uint public rand;
    constructor(){
        admin = msg.sender;   
    }
    function feedRand(uint _random)external {
        require(msg.sender == admin);

        rand = _random;
    }

}
contract GenerateRandomNumber{
    Oracle oracle ;
    constructor(address oracleAddress){
        oracle = Oracle(oracleAddress);
    }
    //modulo so by computing against the remainder we will be able to produce a random number with in a range
    //cryptographic hashing

    //random number generator an input range and uses cryptographic hashing

    function randMod(uint range)external view returns(uint){
        //grab information from the blockchain randomly to genrate random number we need dynamic changing
        //abi.encodePacked concatonates arguments nicely
        return uint(keccak256(abi.encodePacked(oracle.rand, block.timestamp, block.difficulty, msg.sender))) %range;
    
    }
}