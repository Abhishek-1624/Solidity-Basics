
//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

/*
INTERFACES

Interfaces are similar to abstract contracts , but they cannot have any functions implemented

Interfaces can be inherited

Interface can have futher restrictions 
1. They cannot inherit from other contracts but they can inherit from other interface
2. All declared functions must be external
3. They cannot declare a constructor
4. They cannot declare a state variable
*/

interface BaseContract{
    // int public x;
    // address public owner;

    // constructor(){
    //     x = 5;
    //     owner = msg.sender;
    // }
    //We do this becuase a interface cannot hace 

    function setx(int _x) external;
}


contract A is BaseContract{
    int public x;
    int public y = 3;

    function setx(int _x)public override{
        x = _x;
    }
}