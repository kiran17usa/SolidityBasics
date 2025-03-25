//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Member{
    string name;
    uint age;
    //initialize

    constructor(string memory _name, uint _age)public {
        name = _name;
        age = _age;
    }
}

contract Teacher is Member //('Rama',28)
{
    constructor(string memory n, uint a) Member(n,a)public {}
    function getName()public view returns(string memory){
        return name;
    }
}

/* ex:
create contract based on constructor

*/

contract Base{
    uint data;
    constructor(uint _data)public{
        data = _data;
    }
    function getData()public view returns(uint){
        return data;
    }
}
contract Derived is Base(5) {
    function getBaseData()public view returns(uint){
        return data;
    }
}
