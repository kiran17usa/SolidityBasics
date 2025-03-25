//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/* fallback 
no return no input no outputs
must be external
cant have name
*/

contract FallBack{
    event Log(uint gas);

    fallback() external payable{ //payabel sending or calling ether
        //not recommended to write much code in here because the function will fail if its uses too much gas
        //invoke send: we get 2300 gas enough to emit a log
        //gas left returns how much gas left
        emit Log(gasleft());
    }
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

}

//new contract will send ether to fallback contract which will trigger call back function
contract SendToFallBack{
    function transferToFallback(address payable _to)public payable{
        //send ether with transfer method
        //automatically transfer will transfer 2300 gas
        _to.transfer(msg.value);
    }

    function callFallBack(address payable _to)public payable {
        //send ether with the call method
        (bool sent,) = _to.call{value:msg.value}('');
        require(sent,'Failed to send!');

    }
}

