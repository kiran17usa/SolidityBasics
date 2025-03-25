//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
library functions can be called directly if they dont change state
library cant be destroyed - bcoz stateless
cant have state variables
cant inherit any elements
cant be inherited

*/

library Search{
    //we want this loop to return the index of some integer we are searching for
    function indexOf(uint[] storage self, uint value)public view returns(uint){
        for(uint i=0;i<self.length;i++){
           if(self[i] ==value) return i; 
        }
    }
}
contract Test{
    //using A(library) for B(another element)
    uint[] data;
    constructor()public {
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }
    function isValuePresent(uint val)external view returns(uint){
        uint value = val;
        uint index = Search.indexOf(data,value);
        return index;
    }
}


library Search2{
    //we want this loop to return the index of some integer we are searching for
    function indexOf(uint[] storage self, uint value)public view returns(uint){
        for(uint i=0;i<self.length;i++){
           if(self[i] ==value) return i; 
        }
    }
}
contract Test2{
    //using A(library) for B(another element)
    using Search2 for uint[];
    uint[] data;
    constructor()public {
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }
    function isValuePresent(uint val)external view returns(uint){
        uint value = val;
        uint index = data.indexOf(value);
        return index;
    }
}