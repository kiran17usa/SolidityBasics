//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract learnString{
   string greetings = 'Hello! \n you\'re here now!';


   function sayhello() public view returns(string memory){
        return greetings;
   }

   function changeGreeting(string memory _change) public{
        greetings = _change;
   }

   function getStringLength() public view returns(uint){
    //return greetings.length;
    bytes memory stringToBytes = bytes(greetings);
    return stringToBytes.length;
   } 

   string favouriteColor = 'blue';
   function getColor() public view returns (string memory){
      return favouriteColor;
   }
   function changeColor(string memory _color) public {
    favouriteColor = _color;
   }
   function getColorLength()public view returns(uint){
    bytes memory stringToBytes = bytes(favouriteColor);
    return stringToBytes.length;
    
   }
}