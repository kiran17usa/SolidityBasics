//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract FunctionOverloading{
 /*   function x(uint lightSwitch, uint wallet)public {

    }

    function x(uint wallet)public {

    }
*/
    function getSum(uint a, uint b)public pure returns(uint){
        return a+b;
    }

    function getSum(uint a, uint b, uint c)public pure returns(uint){
        return a+b+c;
    }

    function getSumTwoArgs()public pure returns(uint){
        return getSum(2,3);
    }
    function getSumThreeArgs()public pure returns(uint){
        return getSum(4,5,6);
    }
}