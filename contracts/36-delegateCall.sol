// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract B {
    uint256 public num;
    address public sender;
    uint256 public value;

    function setVars(uint256 _num) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}


// Proxy
contract A {
    string public num;
    address public sender;
    uint256 public value;

    // The delegate call uses the key word delegatecall just like call keyword even it can be used to do low level 
    // function calls and transfer call but just like call since it is being used for function call in the proxy 
    // calling the function of implementation contract it creates a instance call of that function but updates the data
    // in the proxy contract
    function setVars(address _contract,uint256 _num) public payable {
        (bool success, bytes memory data) = _contract.delegatecall(abi.encodeWithSignature("setVars(uint256)", _num));
    }

    /*. 
    It updates the data at a storage slot ie, unlike the implementation contract whre it maps the var name to the slot
    and then stores the values , in the proxy oit maps it self to slot and stores at that particular slot which is 
    similar to the implementation contract 
    SInce the proxy is borrowing the functionality of the implementation contract 
    This is what is happening under the hood of the delegate call 
    
    IT STORES ACCORING TO THE STORAGE LOCATION EQUIVALENCE , even is no var is declared in Proxy 
    SO MAKE SURE YOU STORING THE VALUES TYPES AT THE RIGHT LOCATION 
    
    function setVars(uint256 _num) public payable {
        sslot[0] = _num;
        sslot[1] = msg.sender;
        sslot[2] = msg.value;
    }
    
    */


    // This is used to transfer money to a receiver 
    // function pay(address receiver) public payable {
    //     (bool success, bytes memory data) = receiver.call{value: address(this).balance}("");
    //     require(success);
    // }
}
