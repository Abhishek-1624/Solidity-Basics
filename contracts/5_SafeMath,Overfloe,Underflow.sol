// SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

contract Property{
    //1.Boolean Type
    bool public sold;

    //2.Integer Type
    uint8 public x = 255;
    int8 public y = -10;

    //Ethereum is used in many financial applications so Overflow and Underflow can cause some serious problems

    function f1() public{
        x += 1; 
        //This function is supposed to increment the value of x but as we can see the value of x is 255, if we increment
        // more the integer overflow will take place this was huge problem but fixed in the newer versions
    }
}


/*-------------------------------------------------Notes--------------------------------------------------------------
SafeMath was the library was used to prevent Overflow
The SafeMath wraps each calculation in a series of checks to make sure overflow dosent take place

-----------------------------------------------------------------------------------------------------------------------*/