//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

/* 
1.A contract acts like an class . A contract can inherit from another contract know as the base contract to share a common interface

2.Solididty supports multiple inheritance including polymorphism.Multiple inheritance produces problems like "Diamond problem" which must
  be avoided,when a contract inherits from multiple contracts only a single contract is created on the blockchain and the code from 
  all these base contracts is copied to the creted contract

3.When deploying a derived contract the base contracts's constructor is automatically called ; "is" is the keyword used when declaring a new derived
  contract 
*/

contract BaseContract{
    int public x;
    address public owner;

    constructor(){
        x = 5;
        owner = msg.sender;
    }

    function setx(int _x) public{
        x = _x;
    }
}

//Now we are declaring another contract that derives from the base contract
//Deploy the contract A and check it will be similar to the BaseContract only like it will have the same functions as BaseContract
contract A is BaseContract{
    int public y = 3;
}