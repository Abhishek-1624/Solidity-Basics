//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;
/*
    A smart contract can receive ETH and can have ETH balance only if there is a payable function
    A contract recevies Eth in multiple ways :-
    1. First by simply sending ETH to the contract address by an EOA account.In this casse we need a receive() or a fallback() function
    2. By calling a payable function and sending ETH with that transaction
    */

    //First we are going to try the first way now 

contract Deposit{
    address public owner;

    constructor(){
        owner = msg.sender;
    }
    //REMEBER contract can have only one receive() function
    receive() external payable{

    }

    fallback() external payable{

    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    //Now this the second method by deploying a payable function 
    function getEther() public payable{
        uint x;
        x++;
    }
    //How to send access the contract balance and how to send the ETH stored in the contract to another account
   
    // function transferEther(address payable recepient , uint amount) public returns(bool){
    //      if(amount <=  getBalance()){
    //          recepient.transfer(amount);
    //          return true;
    //      }else return false;
    // }
    //Here the problem comes with the security of the smart contract here anyone can call and send ether to their own wallet
    // We need to protect the contract balance in such a way that only the owner of the contract can transfer eth 
    function transferEther(address payable recepient , uint amount) public returns(bool){
        require(owner == msg.sender,"Transfer failed as you are not the owner ");
         if(amount <=  getBalance()){
             recepient.transfer(amount);
             return true;
         }else return false;
    }
}