// SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

contract DynamicArrays{
    //Dynamic Sized Array is reffered to those type of arrays which do not have predetermined size 
    //It can hold elements of any type
    //It has 3 members length push and pop we will create functions of all 
    uint[] public numbers;


    //This is the function to get the length of the Dynamic Sized Array
    function getLength() public view returns(uint){
        return numbers.length;
    }

    //This is a function to Push the elements that is to add the elements in the array
    function addElement(uint item) public{
        numbers.push(item); //This is to add elements in the array
    }

    //
    function getElement(uint i) public view returns(uint){
        if(i<numbers.length){
            return numbers[i];
        }
        return 0;
    }

    //Used to remove elements the last element in the dynamic array
    function popElement() public{
        numbers.pop();
    }

    function f() public{
    // declaring a memory dynamic array
    // it's not possible to resize memory arrays (push() and pop() are not available).
    uint[] memory y = new uint[](3);
    y[0] = 10;
    y[1] = 20;
    y[2] = 30;
    numbers = y;
    }

}

/*--------------------------------------------------------NOTES------------------------------------------------------
The function pure is used when we dont have to interact and change the blockchain the pure keyword is used in function where
it dosent interact with the blockchain
--------------------------------------------------------------------------------------------------------------------*/
