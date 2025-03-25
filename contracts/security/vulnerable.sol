//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Victim{
    function isItAContract()public view returns (bool){
        //if there bytes of code greater than zero then it is a contract
        uint32 size;
        address a = msg.sender;
        //inline assembly accesses EVM ethereum virtual machine
        assembly{
            //extcodesize retrieves the size of the code
            size := extcodesize(a)
        }
        return (size>0);
    }
}

contract Attacker {
    bool public trickedYou;
    Victim victim;
    constructor(address _v)public {
        victim = Victim(_v);
        trickedYou = !victim.isItAContract();
    }
}
//if you call the address from the constructor there are no byte codes
//attacker simply modified the victims address and marked as contract address - but actually its not
