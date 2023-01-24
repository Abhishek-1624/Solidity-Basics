//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

/*Function modifier are used to modify the behaviour of a function. They test a condition before calling a function
  which will be execuded only if the function which will be execuded only if the condition of the modifier evalutes
  to true
  
  Using function modifier can help us avoid redundant code and possible errors
  
  They are contract properites */

contract Property{
    uint public price;
    address public owner;

    //declaring the constructor
    constructor(){
        price = 0;
        owner = msg.sender;
    }
    //Instead of using the require only owner function twice we can use a function modifier
    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }

    function changeOwner(address _owner) public onlyOwner{
    //   require(owner == msg.sender); Now we just need to add onlyOwner instead writing require statement again n again
      owner = _owner;
    }

    function setPrice(uint _price) public onlyOwner{
        // require(owner == msg.sender);
      price = _price;
    }
}