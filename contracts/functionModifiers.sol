//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


//is is a keyword grabbing inheritance from another contract owner

contract Owner{
    //function modifiers
    address owner;
    // set the address to the owner ( msg.sender)
    constructor() public{
        owner = msg.sender;
    }
    //to write a modifier we statically declare the modifier keyword and then name it
    modifier onlyOwner {
        //customizable logic to modify our functions
        require(msg.sender == owner); //checks true ness
        _;
        //the underscore continues with the function
    }

    modifier costs(uint price){
        //what msg.value: the amout in wei being sent with a messsage to contract
        require(msg.value >= price);
        _;
    }
}
contract Register is Owner{
    mapping(address =>bool) registeredAddresses;
    uint price;

    constructor(uint initialPrice)public{
        price = initialPrice;
    }

    function register()public payable costs(price){
        registeredAddresses[msg.sender] = true;
    }
    //onlyowner is our function modifieer that requires
    //only the owner to be able to change the price
    function changePrice(uint _price)public onlyOwner{
        price = _price;
    }


}