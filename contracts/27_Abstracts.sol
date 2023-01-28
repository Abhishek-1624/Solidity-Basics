//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

/* 
ABSTRACT CONTRACT

An abstract contract is one with atleast one function that is not implemented and is declared using the abstract keyword

You can mark a contract as abstract even though all functions are implemented 

An abstract contract cannot 
*/
//Now here we are making the base contract abstract
//Being a abstract contract it cannot be deployed on the blockchain
//SO WE MUST KEEP IN MIND ANY CONTRACT WHICH HAS EVEN ONE FUNCTION WITHOUT IMPLEMENTATION MUST BE DECLARED AS VIRTUAL FUNCTION AND CONTRACT MUST BE ABSTRACT
abstract contract BaseContract{
    int public x;
    address public owner;

    constructor(){
        x = 5;
        owner = msg.sender;
    }

    function setx(int _x) public virtual;
}

//

contract A is BaseContract{

    int public y = 3;

    //And when we implement the function of a virtual in the inherited contract we must use the keyword override
    function setx(int _x) public override{
        x = _x;
    }

    //We cannot override a state variable which is already declared in the BaseContract example we cannot do int public x;
}

