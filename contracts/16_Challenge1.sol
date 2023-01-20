//Consider this Smart Contract.

//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract CryptosToken{
    string name = "Cryptos";
    uint supply;
}

// Change the state variable name to be declared as a public constant.

// Declare a setter and a getter function for the supply state variable.

//Solution

contract CryptosTokenSolution{
    string constant public name = "Cryptos";
    uint supply;

    //Getter function
    function getSupply() public view returns(uint){
        return supply;
    }

    //Setter function
    function setSupply(uint _supply) public{
        supply = _supply;
    }
}