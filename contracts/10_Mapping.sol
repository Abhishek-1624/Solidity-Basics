// SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

/* Mapping in Solidity is data structure which key-valu pair like HashMaps in JAVA
   All keys and values must have same type
   Mapping is always stored in storage
   Mappings have constant lookup time while array have linear search time,it is not iterable 
   Keys are not saved in the*/

   contract Auction{
       mapping(address => uint)public bids; //This is the syntax of the mapping

       //Now they are multiple ways to receive ether for a contract but now we will use payable function
       function bid() payable public{
           bids[msg.sender] = msg.value;
           //msg.sender is the address that calls the function 
           //msg.value is value in wei sent when calling the function
       }
   }