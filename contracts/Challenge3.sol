//SPDX-License-Identifier: GPL-3.0

// Challenge #4

// Consider this Smart Contract.

// Add a function so that the contract can receive ETH by sending it directly to the contract address.

// Return the contract’s balance.

// Deploy and test the contract on Rinkeby Testnet.

// Challenge #5

// Consider the solution from the previous challenge.

// Add a function that transfers the entire balance of the contract to another address.

// Deploy and test the contract on Rinkeby Testnet.

// Challenge #6

// Consider the solution from the previous challenge.

// Add a new immutable state variable called admin and initialize it with the address of the account that deploys the contract;

// Add a restriction so that only the admin can transfer the balance of the contract to another address;

// Deploy and test the contract on Rinkeby Testnet.


pragma solidity >=0.5.0 <0.9.0;

contract Deposit{
    address public immutable admin;

constructor() {
    admin = msg.sender;
}

receive() external payable{

}

function getBalance() public view returns(uint){
    return address(this).balance;
}

function transferEther(address payable recepient , uint amount) public returns(bool){
    require(admin == msg.sender , "Transfer failed because you are not the owner ");
    if(amount <= getBalance()){
        recepient.transfer(amount);
        return true;
    }else return false;
}
    
}