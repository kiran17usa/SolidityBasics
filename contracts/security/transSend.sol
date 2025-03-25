//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


modifier onlyOwner{
        require(true);
        _;
    }
function sendRefund()  onlyOwner returns(bool success){
    if(!tatiana.send(amount)){
        //do with failure

    }
}

/*
write a withdrawl function so that investor can withdraw funds on their own through the functionality

*/

/* write another function to claim refunds. 
which requires the balance of the msg.sender greater than 0 and transfer the balance to the curent caller.
pseudo balance var named balance.
*/
function claimRefund(){
    require(balance[msg.sender]>0);
    msg.sender.transfer(balance[msg.sender]);

}

//by the customer working directly to claim a refund with their contract address we eliminate the outside interference
//very greatly!
//By making our transactions one at a time - withdrawl patterns


function withdrawFunds(uint amount) returns(bool success){
    require(balance[msg.sender] >= amount);
    balance[msg.sender] = balance[msg.sender] - amount;
    msg.sender.transfer(amount);
    return true;
}