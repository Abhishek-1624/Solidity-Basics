//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

contract FixedSizeArray{
    uint[3] public numbers = [2,3,4]; // If the array is public the getter function is automatically created 
    
    // declaring fixed-size arrays of type bytes
    bytes1 public b1;
    bytes2 public b2;
    bytes3 public b3;
    //.. up to bytes32



    function setElement(uint index,uint value) public{
        numbers[index] = value;
    }

    function getLength() public view returns(uint){
        return numbers.length;
    }
    // setting bytes arrays
    function setBytesArray() public{
    b1 = 'a'; // => 0x61 (ASCII code of `a` in hex)
    b2 = 'ab'; // => 0x6162
    b3 = 'z'; // => 0x7A
    // b3[0] = 'a'; // ERROR => can not change individual bytes
 
    // byte is an alias for bytes1 on older code
}
}