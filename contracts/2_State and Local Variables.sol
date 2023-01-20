// SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

/*
Variable Types:  

1.State Variable
These are declared at the contract level and stored permanently on the contract,they can be set as constants
Expensive to use and use gas 

2.Local Variable
These are declared inside the functions,if using the memory keyword and are array or struct 
They are free not use any gas


*/

contract Property{
    int public price;
    //For constant we compulsory need to give a value there is no such concept as null
    //string constant public location ; THIS SHIT IS WRONG
    string constant public location = "London";

    //price = 100; is not permitted in solidity
    // we either have to do it while setting it or we have to do it by using a setter function

    function f1()public pure returns(int){
        int x = 5;
        x = x * 2;

        string memory s1 = "ab";
        return x;
    }    
}

/* -----------------------------------------------NOTE-----------------------------------------------------
    //Where does EVM Store Data
    1.Storage
    Holds state variable,its expensive uses gas fees

    2.Stack
    Hold local variable defined inside functions if they are not refrence types,free to be used

    3.Memory
    Holds local variables defined inside the functions if they are refrence types but decalred with memory keyword
    Free to be used 
    refrence types string array struct mapping

    */