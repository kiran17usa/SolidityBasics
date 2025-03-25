//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract learnMapping{
    //map - kay and value
    mapping(address => uint) public myMap;

    function setAddress(address _addr, uint _i)public {
        myMap[_addr] = _i;
    }

    function getAddress(address _addr) public view returns(uint){
        return myMap[_addr];
    }
    function removeAddress(address _addr)public {
        delete myMap[_addr];
    }

    //
    mapping(uint=>Movie) movie;
    mapping(address=>mapping(uint=>Movie))public myMovie;
    struct Movie{
        string title;
        string director;

    }
    function addMovie(uint id, string memory title, string memory director) public {
        movie[id]= Movie(title, director);
    }

    function addMyMovie(uint id, string memory title, string memory director) public {
        myMovie[msg.sender][id]= Movie(title, director);
        //msg.sender = whos is calling the contract
    }

    //nested maps

}