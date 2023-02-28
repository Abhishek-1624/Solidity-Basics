// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract storage_locations {
    // global variables by default are storage variabe as they are stored on the chain 
    uint favouriteNumber;
    
    struct people {
        uint favouriteNum ;
        string Name;
    }
    
    people[] public peoples;

    // data location must be specified for strings[special array of bytes], array , struct etc 
    // calldata and memory are temporary that is changes last as long as the function is running 
    // storage is permanent storage and the data is stored on chain 
    // if we dont want to use the input parameter variable again then prefer temporary data location 
    
    // memory is a data location that can be modified 
    function addPerson_Using_Mem(string memory _name, uint _favnumber) public returns(string memory){
        string memory _noobname = _name;
        // here we can see that the input variable was being modified inside the function 
        _name = "yellow"; // --> in the case of meory this is possible 
        peoples.push(people(_favnumber,_name));
        return _name;
    }

    // call data is type of temporary storage which cant be modified
    function addPerson_Using_Calldata(string calldata _name, uint _favnumber) public {
        // _name = "happy"; --> this will give error 
        peoples.push(people(_favnumber,_name));
    }
}

// -------------------------------------------NOTE-----------------------------------------------

// strings, array , struct, mapping when given as a parameter to a function 
// they must contain the data location either at memory or as a calldata
