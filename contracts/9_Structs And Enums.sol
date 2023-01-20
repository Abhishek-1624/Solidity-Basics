// SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

/* A struct introduces a new complex datatype which is composed of elemntary data types 
   We use structs to represent a singular thing that has properties like car,person etc
   Its similar to classes in OOPS */
struct Instructor{
    uint age;
    string name;
    address addr;
}

contract Academy{
    Instructor public academyInstructor;

    enum State {Open,Closed,Unkown}
    State public academyState = State.Open;

    constructor(uint _age, string memory _name){
        academyInstructor.name = _name;
        academyInstructor.age = _age;
        academyInstructor.addr = msg.sender; //It is the address that deploys the contract
    }
    //This is how we modify the a instructor
    function changeInstructor(uint _age, string memory _name,address _addr) public{
        /*By default struct refrence is storage we need to create a temporary memory struct
         intialiazing it witht the given values and coping to storage stuct*/
        if (academyState == State.Open){
        Instructor memory myInstructor = Instructor({
            age: _age,
            name: _name,
            addr: _addr
        });
        academyInstructor = myInstructor;
    }}
}

contract School{
    Instructor public schoolInstructor;

    constructor(uint _age, string memory _name){
        schoolInstructor.name = _name;
        schoolInstructor.age = _age;
        schoolInstructor.addr = msg.sender;
    }
}
/*----------------------------------------------NOTES---------------------------------------------------------
Enums are used to create a user defined types
We can set enums to define the state of the contract if they are running or not 
WE DONT END ENUMS WITH SEMICOLON
--------------------------------------------------------------------------------------------------------------*/
