//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

contract A{
    string[] public cities = ['Hyderabad','Banglore'];


    function f1() public{
        string[] memory s1 = cities; //This variable s1 will be stored in memory not in storage
        s1[1] = 'New York';
    }

    function f2() public{
        string[] storage s1 = cities;
        s1[1] = 'New York';
    }
    /* Now for this above code When we deploy the contract the for the functin f1 where we used the word "memory"
    in that case it wont change the array and it will remain as ['Hyderabad','Banglore']; but in the case of f2 where we 
    used the word "storage" this makes changes to the array and makes it ['Hyderabad','New York']; */
}