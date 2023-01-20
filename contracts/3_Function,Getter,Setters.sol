// SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;


//The function create a contracts interface

contract Property{
    int public price;
    string location = "London"; // this wont be seen when we deploy
    string public locations = "Hyderabad"; // Because of public it will be seen when deloyed

    function setPrice(int _price) public{
        price = _price;
    }

    function getPrice() public view returns(int){
        return price;
    }
}