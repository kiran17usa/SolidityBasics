//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract learnArray{
    uint[] public myArray;
    uint[] public myArray2;
    uint[200] public myFixedSizedArray;

    function push(uint number) public{
        myArray.push(number);
    }
    function pop()public{
       // uint result;
         myArray.pop();
    }
    function length()public view returns(uint){
        return myArray.length;
    }
    function remove(uint i)public{
        delete myArray[i]; // even after delete length remains same
    }
    

    uint[] public changeArray;
    function removeElement(uint i) public{
        changeArray[i] = changeArray[changeArray.length -1];
        changeArray.pop();
    }
    function test()public{
        //changeArray.push(1);
        for(uint i =0;i<=4;i++){
            changeArray.push(i);
        }
    }
    function getChangeArray()public view returns(uint[] memory){
        return changeArray;
    }
}

