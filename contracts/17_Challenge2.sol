//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

/* Consider the solution from the previous challenge.
   Add a public state variable of type address called owner.
   Declare the constructor and initialize all the state variables in the constructor.
   The owner should be initialized with the address of the account that deploys the contract. */

   //Solution
   
contract CryptosTokenSolution2{
    string constant public name = "Cryptos";
    uint supply;
    address public owner;

    constructor(uint _supply){
        supply = _supply;
        owner = msg.sender;
    }

    //Getter function
    function getSupply() public view returns(uint){
        return supply;
    }

    //Setter function
    function setSupply(uint _supply) public{
        supply = _supply;
    }
} 