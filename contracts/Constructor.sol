pragma solidity >=0.5.0 <0.9.0;

contract Property{
    int public price;
    string public location;
    address public owner;
    //Initalizing constant or immutable state variables 
    //for constant we need to set the value the decleration time 
    int constant area = 100;
    // for immutable it can be done at construction time
    int immutable owners = 23;
    

    //Constructor is a special function which is only created once the contract is created
    //it is used to initaize state variables 
    constructor(int _price,string memory _location){
        price = _price;
        location = _location;
        owner = msg.sender; //msg.sender is global variable it stores the address of the account which deploys the contract 
    }
    function setPrice(int _price) public{
        price = _price;
    }
    function setLocation(string memory _location) public{
        location = _location;
    }
}