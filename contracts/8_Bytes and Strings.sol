// SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

contract BytesAndStrings{
    bytes public b1 = 'abc';
    string public s1 = 'abc';

    /*One difference between the bytes and Strings are we cannot add elements to the string variable 
    where as we can add variable for the string variable */

    //This is a function to add variable to the bytes
    function addElement() public{
        b1.push('x'); // We cant do the same thing for strings only works for bytes
    }
}