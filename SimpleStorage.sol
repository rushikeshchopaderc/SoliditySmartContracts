// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.18; // This solidity version syntax latest is 0.8.28
// pragma solidity >=0.8.0 <0.9.0;  // syntax for solidity version between the specified range

contract SimpleStorage{ // The contract keyword is similar to the class keyword in Java/Python
    uint256 int_var=12;     // uint256 and unit are same in solidity, if not assigned any value it take default value of 0
    bool bool_var=true;     // takes default value of false
    address addr_var=0x86223a111043E7bF07807EC4fD7eA968Ce589A5d;
    string str_var= "Hello World";
    int256 int_var2=4;      // uint256 can go upto 2^156 -1, but int can go only half of that because of it being signed.
    bytes32 bytes_var= "cat"; // strings can also be represented in bytes format. and they can look like 0xb8477jd8ja when represented in hexadecimal format.
}


