// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// Mappings are dictioniaries in solidity. Similar to HashMaps in vyper.

contract BalanceTracker{
    
    mapping(address=>uint256) public addressToBalance; // Defining a mapping
    struct Person {         //defining a struct datatype
        address myAddress;
        uint256 myBalance;
    }

    Person[] public listOfPeople; // making a dynamic array to store the struct type variables.

    function AddUserAndBalance(address _address, uint256 _balance) public {
        // function to add user and its balance
        listOfPeople.push(Person({myAddress:_address, myBalance:_balance}));
        addressToBalance[_address] = _balance;
    }
    function getBalance(address _address2) public view returns(uint256){
        return addressToBalance[_address2];
    }
}