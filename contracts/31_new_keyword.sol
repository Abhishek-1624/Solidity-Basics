// SPDX-License-Identifier : MIT
// create a contract from another contract 

pragma solidity ^0.8.0;

contract Account { // base contract 
    address public bank;
    address public owner;

    constructor (address _owner, address eoa) payable { // the contract is payable 
        bank = eoa;
        owner = _owner;
    }
}

contract AccountFactory { // this contract is used to deploy multiple contract Account
    Account[] public accounts;
    
    function create_Account(address _owner) external payable{ // making the function payable
        // since the Account is payable we can send the value through the curly brackets
        Account test = new Account{value: 100 wei}(_owner, msg.sender); 
        accounts.push(test);
    }
}

