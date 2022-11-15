pragma solidity >=0.5.0 <0.9.0;

contract Property{
    int public price;
    string public location = "London";

    function setPrice(int _price) public{
        price = _price;
    }
    //This is a getter function show have the "view" or "pure" as this function does not require gas price 
    function getPrice() public view returns(int){
        return price;
    }
    //Only setter function can create a transaction and change the blockchain
    function setLocation(string memory _location) public{
        location = _location;
    }
}