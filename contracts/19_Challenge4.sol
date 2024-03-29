//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

/* 
    Consider this Smart Contract.

    Add a function so that the contract can receive ETH by sending it directly to the contract address.

    Return the contract’s balance.

    Deploy and test the contract on Rinkeby Testnet.
*/
contract Deposit{
    //This is so the function can receive ETH by sending it directly
    receive() external payable{

    }

    //This is to check the balance
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}