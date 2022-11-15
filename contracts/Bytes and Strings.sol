//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

//Variables of types Bytes and Strings are special Dynamic arrays
contract BytesAndStrings{
    bytes public b1 = 'abc';
    string public s1 = 'abc'; // A string is UTF 8 encoded in Solidity

    function addElement() public{
        b1.push('x');
        //s1.push('x'); // You cannot add elements to the type string but we can add elements to the type bytes
    }

    // Another particulairty of bytes array is it that is possible to access the elements of the Array using indexing
    function getElement(uint i) public view returns(bytes1){
        return b1[i];
        // return s1[i]; This is not possible to do for string 
    }

    function getLength() public view returns(uint){
        return b1.length;
        // return s1.length is also not possible in the case of Strings 
    }

    /*Note 
    Fixed Size arrays are preffered as they take up less gas Fees when compared to Dynamic size array
    */


}
