//SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

contract FixedSizeArray{
    uint[3] public numbers; /*This is the syntax of a fixed size array,and as we have public a getter function is automatically
                            created,The basic properties are same as they are in other languages
                            like starts from 0 */

    //Setter function to change the elements of the array
    function setElement(uint index,uint value) public{
        numbers[index] = value;
    }

    //Creating a function to get the length of the array 
    function getLength() public view returns(uint){
        return numbers.length;
    }

}