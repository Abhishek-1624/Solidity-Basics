// SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

contract A{
    string[] public cities = ["Hyderabad","Banglore"];

    //Now we will create a function we will try to modify the dynamic array using memory variable

    function f_memory() public{
        string[] memory s1 = cities;
        //Note that it is necessary for an array string or struct to specify memory or storage
        //string s2; will throw an error
        s1[0] = 'Pune';//THis case it wont update on the blockchain
    }

    function f_storage() public{
        string[] storage s1 = cities;
        //Note that it is necessary for an array string or struct to specify memory or storage
        //string s2; will throw an error
        s1[0] = 'Pune';//For storage it will change the state of the blockchain
    }
}
//Deploy and see to notice errors
