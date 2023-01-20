// SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

contract Property{
    int public price;
    string public location;
    address public owner;

    //The constructor is a special function,it used to initalize a state variable when contract is deployed by EOA or a contract
    constructor(int _price, string memory _location){
        price = _price;
        location = _location;
        owner = msg.sender; //The msg.sender is global built in variable this always stores the address of the account that deploys the contract
    }

    function setPrice(int _price) public{
        price = _price;
    }

    function setLocation(string memory _location) public{
        location = _location;
    }
}


/*-------------------------------------------------------------------NOTE-------------------------------------------------------------------
SOlidity is a programming language that is statically typed like java and C++
It means that every variable type must be specified at compile time itself

*/