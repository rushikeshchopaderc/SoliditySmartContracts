// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/* EVM can read and write to several places:
1) It can read and write to : Stack, memory, storage, Transient Storage, calldata, code, returndata.
2) It can write to(can't read) : Logs
3) It can read from(can't write) : Transaction Data and blobhash, chain data, gas data, program counter, etc.
*/
/*
    Calldata (The variable is going to exist temporarily and it is not modifyable - read only), memory (The variable is going to exist temporarily and they can be modified - read/ write) and storage (The variable is going to exist permanently and be modified- read/write)
    String variable need to be defined with memory or calldata. By default any variable is set to memory inside every function other than string.
    Any Variable that is defined outside of the function, that is by default a storage variable.
*/

contract FuncTypes{
    uint256 public myIntVar=1; // This is set to storage variable by default

    struct Person{
        uint256 favourite_num;
        string name;
    }
    
    Person[] public listOfPeople;

    function addPerson(uint256 _myFav_number, string memory _name) public {
        // memory or calldata needs to be defined with arrays, structs and mappings. Strings are arrays of characters. So needs to be defined
        _name= 'This is my name'; // This will work if the variable _name is set to memory. if it is set to calldata, it will throw an error.
        listOfPeople.push(Person({favourite_num:_myFav_number, name: _name}));
    }
}