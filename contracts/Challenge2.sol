//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

// Challenge #3

// Consider this Smart Contract.

// Modify the changeTokens() function in such a way that it changes the state variable called tokens.

contract MyTokens{
    string[] public tokens = ['BTC', 'ETH'];
    
    //REMEBER You can change the value of the tokens array only if we include "storage" while make array t
    function changeTokens() public {
        string[] storage t = tokens;
        t[0] = 'VET';
    }
    
}