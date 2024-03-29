//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

/*
Challenge #8

    Consider this smart contract.

    Change the visibility specifier of f() so that it can be called from derived contracts as well. 
    Do not set it as being public.

    Create a new contract that derives from A and call f3() from the new contract. 
*/

contract A{
    int public x = 10;
    function f3() internal view returns(int){
        return x;
    }
    
}
contract B is A{
    int public xx = f3();
}