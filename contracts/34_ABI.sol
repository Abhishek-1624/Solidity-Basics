
// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract test {

    // Here we are encoding the number 
    // output -  0x0000000000000000000000000000000000000000000000000000000000000001
    function encodeNumber() public pure returns (bytes memory) {
        bytes memory num = abi.encode(1);
        return num;
    }

    //  Here we are encoding the String 
    //  output - 0x0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000b736f6d6520537472696e67000000000000000000000000000000000000000000
    function encodeString() public pure returns (bytes memory) {
        bytes memory str = abi.encode("some String");
        return str;
    }

    // Here we are using encodePacked which is similar to encode 
    // Using encode packed is more gas efficient as it removes all the offsets and just stores the result
    // output - 0x736f6d6520537472696e67
    // retuns the smaller output compared to the encodeString()
    function encodePackedString() public pure returns (bytes memory) {
       bytes memory str = abi.encodePacked("some String");
        return str; 
    }

    // converting the given string to bytes 
    // It gives the same result as encodePacked but works a bit differetly under the hood 
    // output - 0x736f6d6520537472696e67
    function bytestoString() public pure returns (bytes memory ) {
        bytes memory str = bytes("some String");
        return str;
    }

    // Here we converting the encodeString back to string and returning it 
    // Here we are basically typecasting the hex output of the encoding back to String 
    // output - some String -> same as the input given to be encoded 
    function encodeABIEncodetostring() public pure returns (string memory) {
        bytes memory num = abi.encodePacked("some String");
        string memory str = string(num);
        return str;
    }

    // Here we are decoding the encodeing string into a string 
    // here the abi.decode() takes 2 parameters --> 1) the encoded message  2) the type the encoded message has to be decoded into 
    //  in this case the encoded message is the function encodeString() and type to be decoded into string 
    // output - some String
    function decodeString() public pure returns (string memory) {
        string memory str = abi.decode(encodeString(), (string));
        return str;
    }

    // Here i am encoding multiple strings 
    // output - 0x00000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000b736f6d6520537472696e670000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010536f6d65206f74686572537472696e6700000000000000000000000000000000
    function multiEncode() public pure returns(bytes memory) {
        bytes memory str = abi.encode("some String", "Some otherString");
        return str;
    }

    // here i am decoding the multiple encoded value and 
    // I am able to multidecode because the string has been individually encoded and not packencoded
    // output - 0: string: some String, 1: string: Some otherString
    // since it is returning a tuple index 0 is str1 and index1 str2
    function multiDecode() public pure returns (string memory, string memory) {
        (string memory str1, string memory str2) = abi.decode(multiEncode(), (string,string));
        return (str1,str2);
    }

    // Here the data has been concatenated and has been encoded
    function multiencodePacked() public pure returns (bytes memory) {
        bytes memory byt = abi.encodePacked("some String", "Some otherString");
        return byt;
    }

    // ---> IT WONT WORK -> Rather typecast the multiencodePacked() into string 
    // Here the data has been concatenated and cant be decoded directly since the compiler doesnt know how to decode it 
    function multidecodePacked() public pure returns (string memory) {
        string memory str1 = abi.decode(multiencodePacked(), (string));
        return str1;
    }

    // Here i am able to decode the multipackedEncoded message by typecasting it into a string
    // output - some StringSome otherString
    function multidecodeString() public pure returns (string memory) {
        string memory str1 = string(multiencodePacked());
        return str1;
    }
}

/*
--------------------------------------------------------------------------------------------
                                    ABI ENCODING and DECODING

--> At an overview Encoing is something very similar to converting the data given into the hex-form

--> It is very common to encode and decode data and also widely used to concat string data

*/
