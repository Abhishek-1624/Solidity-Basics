// SPDX-License-Identifier: GPL-3.0 (Every smart contract should start with a comment idicating its liscence )
//SPDX is The Software Package Data Exchange is open standard used to document info 

pragma solidity ^0.8.3; //(We also have to mention the solidity version we will be using)
//It is also adviced to use the latest version of solidity as with every new changes a bug is fixed and is obviously better lol

contract Property{
    //(The whole contract source code is placed between these curly braces they are basically similar to classes)
    uint private price;
    address public owner;

    constructor(){
        //The constructor is used to initalize the state variable 
        price = 0;
        owner = msg.sender;
    }


    //Here we are creating a setter function which will be called when we have to change the value 
    function changeOwner(address _owner) public{
        owner = _owner;
    }

    //Similary this is also a setter function
    function setPrice(uint _price) public{
        price = _price;
    }

    //This is an example of getter function which creates a call which returns the value 
    function getPrice() view public returns(uint){
        return price;
    }
}













//-----------------------------------------------NOTES--------------------------------------------------------------
/*(To deploy the contract the EVM converts the source code to byte code and converts this byte code )

The Byte is what gets deployed to the blockchain and infact is the low level evm machine code 

The ABI is an interface that basically says how another application should talk to smart contract and how to call functions 

opcode is more readable form of the byte code 

ABI is json format represents all the functions and its arguments , its how the contract presents itself to other contracts

*/
