//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


//who can modify the contract
// onlyBy - only the mentioned caller can call this function
//onlyAfter - called after certain time period
//costs - call this function only if certain value is provided

contract RestrictedAccess{
    address public owner = msg.sender;
    uint public creationTime = block.timestamp;
    //modifier that will require the current caller to be equal to an account address which we set as an input in the modifier and if the requirement fails send a msg that says - sender not authorized
    modifier onlyBy(address _account){
        require(msg.sender == _account, 'Sender not authorized');
        _;
    }

    //write a function that will change the owner address
    function changeOwnerAddress(address _newAddress) onlyBy(owner) public
    {
        owner = _newAddress;
    }
    //write a function that can disown the current owner
    modifier onlyAfter(uint _time){
        require(block.timestamp >= _time);
        _;
    }
    //only run the function 3 weeks after the contract creation of the contract
    function disown() onlyBy(owner) onlyAfter(creationTime + 5 seconds) public{
        delete owner;
    }

    //modifier for costs
    modifier costs(uint _amount){
        require(msg.value>= _amount, 'Not enough ether provided');
        _;
    }
    //force owner change if caller have 200 ether
    function forceOwnerChange(address _newOwner) payable public costs(200 ether){
        owner = _newOwner;
    }

    //bonus 
    


}
