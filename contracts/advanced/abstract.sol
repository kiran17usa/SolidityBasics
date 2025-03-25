//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

//base contract
//derived contract
//abstract - will have atleast one function with out implementation - derived contract can implement this

contract X{
    //since no implementation shall mark as virtual
    function y()public view  virtual returns(string memory){}   

}
contract Z is X{
    function y()public override pure returns(string memory){
        return 'hello';
    }
}

contract Member{
    string name;
    uint age = 38;
    function setName()public view virtual returns(string memory){}
    function returnAge()public view returns(uint){
        return age;
    }
}
contract Teacher is Member{
    function setName()public override pure returns(string memory){
        return 'Kiran';
    }

}

abstract contract Calculator{
    function getResult()public virtual view returns(uint);
}

contract Test is Calculator {
    function getResult()public override pure returns(uint){
        uint a = 1;
        uint b = 2;
        uint result ;
        result = a+b;
        return result;
    }
}
