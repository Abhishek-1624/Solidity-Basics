//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

/*
    Consider the solution from the previous challenge.

    Add a function that transfers the entire balance of the contract to another address.

    Deploy and test the contract on Rinkeby Testnet.
*/
//Solution
contract Deposit{
    //This is so the function can receive ETH by sending it directly
    receive() external payable{

    }

    //This is to check the balance
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    //Function to tranfer the entire balance to another address
    function transferEther(address payable recepient) public{
        recepient.transfer(address(this).balance);
    }
}