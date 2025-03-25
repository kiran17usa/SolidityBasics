//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


//assert
//require
//revert
//revert with reason

contract LearnErrorHandling{
    bool public sunny = true;
    bool public umbrella = false;
    uint finalCalc = 0;

    //solar panel machine
    function solarCalc()public{
        require(sunny, 'Its not sunny today!');
        finalCalc +=3;
        assert(finalCalc !=6);
    } 
    //finalCalc can never equal 6
    function internalTestUnits()public{
        assert(finalCalc !=6);
    }
    //machine that controls the weather
    function weatherChanger() public{
        sunny =!sunny;
    }

    //grab finalCalc
    function getCalc()public view returns(uint){
        return finalCalc;
    }

    function bringUmbrella()public{
        if(!sunny){
            umbrella = true;
        }else{
        revert('No need to bring on umbrella today');
        }
    }
}
//excercize
contract Vendor{
    address seller;
    modifier onlySeller(){
        require(msg.sender == seller,'only the seller can sell \this!');
        _;
    }
    function becomeSeller()public{
        seller = msg.sender;
    }
    function sell(uint amount)payable public onlySeller{
        if(amount >msg.value){
           revert(' There is not enough ether provided!');  
        }
    }
}

