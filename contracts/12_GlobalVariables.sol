// SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

/* Solidity contains some Built-In GLobal Variables
   
   msg contains information about the account that generates the transaction and also about the transaction
   or call

   msg.sender = account that generates the transaction
   msg.value = eth value sent to the contract
   msg.gas = remaning gas left
   msg.data etcc
*/

contract GlobalVariables{
    address public owner;

    constructor(){
        owner = msg.sender; //Owner is the person who deployed the contract
    }
}