//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


//cybersecurity

//withdrawl pattern
contract test{
    modifier onlyOwner{
        require(true);
        _;
    }
function returnFunds() public onlyOwner returns(bool success){
    for(uint i=0; funders.length;i++){
        funders[i].transfer(contributedAmount);
    }
    return true;
}
}