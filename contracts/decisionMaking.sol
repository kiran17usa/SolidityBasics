//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract DecisionMaking{
    uint oranges = 5;
    function validateOranges() public view returns(bool){
        // one equal sign assigns
        // two equal signs equivalates

        if(oranges== 5 )
        {
            return true;
        }else{
            return false;
        }
    }
    uint stakingWallet =8;
    function airDrop() public view returns(uint){
        if(stakingWallet ==10){
           return stakingWallet +10;
        }else {
            return stakingWallet +1;
        }
    }

    
}