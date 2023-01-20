//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

/*
    Consider the solution from the previous challenge.

    Add a new immutable state variable called admin and initialize it with the address of the account 
    that deploys the contract;

    Add a restriction so that only the admin can transfer the balance of the contract to another address;

    Deploy and test the contract on Rinkeby Testnet.
*/
//Solution
contract Deposit{
    address public immutable admin;
    //This is so the function can receive ETH by sending it directly
    receive() external payable{

    }

    constructor(){
        admin = msg.sender;
    }

    //This is to check the balance
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    //Function to tranfer the entire balance to another address
    function transferEther(address payable recepient) public{
        require(admin == msg.sender);
        uint balance = getBalance();
        recepient.transfer(balance);
    }
}