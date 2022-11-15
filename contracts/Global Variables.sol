//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

contract GlobalVariables{
    address public owner;
    // A contract can have an eth balance just like an externally owned account 
    uint public sentValue; 
        // the current time as a timestamp (seconds from 01 Jan 1970)
    uint public this_moment = block.timestamp; // `now` is deprecated and is an alias to block.timestamp)
    
    // the current block number
    uint public block_number = block.number;
    
    // the block difficulty
    uint public difficulty = block.difficulty;
    
    // the block gas limit
    uint public gaslimit = block.gaslimit;  

    constructor (){
        owner = msg.sender;
    }

    function changeOwner() public{
        owner = msg.sender;
    }

    //The function that recevies eth must be declared "payable" 
    // This is function used to create sendEther 
    function sendEther() public payable{ 
        sentValue = msg.value;
    }
    //This is the function used to create the get balance
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    //Function to check how much gas does the block of code consumes 
    // function howMuchGas() public view returns(uint){
    //     uint start
    // }
}