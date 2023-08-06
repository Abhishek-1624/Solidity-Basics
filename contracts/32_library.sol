// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// libraries are used to separate and reuse code 

library Math {
    // restriction in library is that we cant declare global variables (state variable)
    function MAX(uint x, uint y) internal pure returns(uint) {
        if (x > y){
            return x;
        }
        return y;
    }
}

contract test {
    // creating a library to get the max of 2 integers
    function testMax(uint x, uint y) external pure returns(uint){
        return Math.MAX(x,y);
    }
}
