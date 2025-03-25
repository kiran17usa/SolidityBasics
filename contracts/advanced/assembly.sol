//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


//EVM - smart contracts are not the real code in the blockchain - solidity code is compiled to a lower level language
//in EVM everything is stored in slots of 256 bits whereas mapping or array is several
contract LearnAssembly{
    function addToEVM()external {
        uint x;
        uint y;
        //uint z=x+y;
        assembly {
        let z := add(x,y)
        //write if, for, 
        //load data for a specific slot
        //let a := mload(0X40)

        //mstore(a,4)
        //persistance storage!
        //Sstore(a,100)
        }
    }
    //all of this is compiled to low level instruction (opcodes)
    function addToEVM2()public view returns(bool success){
        uint size;
        address addr;
        //check whether an address contains any bytes of code or not
        assembly{
            size := extcodesize(addr)
        }
        if(size<=0)
        return true;
        else 
        return false;
    }
    function addToEVM3()external view {
        bytes memory data = new bytes(10);
        //we cant convert this into a fixed size
        //bytes32 dataB32 = bytes32(data);
        //but if we only care about the first 32 bytes we can use assembly
        bytes32 dataB32;
        assembly{
            dataB32 := mload(add(data,32))
            //operation add and we add 32 bytes so we fill the first slot

        }
    }
}