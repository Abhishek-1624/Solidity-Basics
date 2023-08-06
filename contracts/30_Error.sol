// SPDX-License-Identifier: MIT

// in solidity we use error in the form of require,revert, assert
// so that when there is a error - gas refunded, state updates are reverted
// custom error is used to save gas 

pragma solidity ^0.8.0;

contract error {
// first lets see require 
// require is used for access control and for validation
function testRequire(uint i) public pure {
    require(i <= 10, "i is greater than 10");
    // code......
}

// lets see revert
// revert is used in the similar manner as require
function testRevert(uint i) public pure{
    if (i > 10){
        revert("Error i is greater than 10");
    }
}

// to use custom error we will use the revert keyword
// custorm error is helpful to save gas 

error MyError();
function testError(uint i) public pure{
    if (i > 10) {
        revert MyError();
    }
}

}
