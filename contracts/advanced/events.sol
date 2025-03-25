//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract LearnEvents{
    //declare and emit the event
    event NewTrade(
        uint indexed date,
        address from,
        address indexed to,
        uint indexed amount
    );
    function trade(address to, uint amount)external {
        //outside consumer cans see the event through web3.js
        //block.timestamp is a global variable that gives the current timestamp
        emit NewTrade(block.timestamp,msg.sender, to, amount);
    }
}