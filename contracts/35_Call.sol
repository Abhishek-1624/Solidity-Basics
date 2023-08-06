// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Test {

/*
In order to call a function using only the data field of call, We need :
1) Function Name
2) The Parameters me want to add


Now also We should know that each contract assigns a function a specific function ID
The Function Id is know as the "function selector"

Function Selector :- Is the first 4 bytes of the function signature
Function Signature :- It is the hash of the function all with the parameters 
*/

    address public s_address;
    uint256 public s_amount;

    function transfer(address some_address,uint256 some_amount) public {
        s_address = some_address;
        s_amount = some_amount;
    }

    // Here we are trying to get the function selector of transfer()
    function getSelector1() public pure returns (bytes4 selector) {
        selector  = bytes4(keccak256("transfer(address,uint256)"));
    }

    // here i am trying to get the function selector along with the parameters 
    function getDataToCallTransfer(address someAddress, uint256 amount)
        public
        pure
        returns (bytes memory)
    {
        return abi.encodeWithSelector(getSelector1(), someAddress, amount);
    }

    // This is a low level method to call the transfer function using encoding and call keyword 
    function callTransferFunctionWithBinary(address someAddress, uint256 someAmount) public returns(bytes4, bool){
        (bool success, bytes memory returndata) = address(this).call(getDataToCallTransfer(someAddress, someAmount));
        return (bytes4(returndata), success);
    }


    // Here we are using abi.encodewithSIgnature instead of the we manually getting the signature 
    function callTransferFunctionBinaryTwo(address someAddress, uint256 amount)
        public
        returns (bytes4, bool)
    {
        (bool success, bytes memory returnData) = address(this).call(
            abi.encodeWithSignature("transfer(address,uint256)", someAddress, amount)
        );
        return (bytes4(returnData), success);
    }

    // Here we used the call method to tranfer funds 
    // function transferfunds(address addr) public payable {
    //     (bool success, ) = addr.call{value: msg.value}("");
    // }

}
