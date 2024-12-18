// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract StorageContract{
    uint256 public myFavouriteNumber; // default set to 0;

    // Defining a dynamic array
    uint256[] public fav_num_array; // default set to []; This is a dynamic array of undfined length.

    // Defining a struct
    struct Person{
        uint256 favourite_num;
        string name;
    }

    // Using a struct to make an object
    Person public pat= Person({favourite_num:7, name: 'Pat'});
    Person public maria= Person({favourite_num:8, name: 'Maria'});

    // If we want to have an object of Person data type given as an input by the user, we can have a seperate function for that. 
    // Steps: 1. Define a dynamic array to store the new entries
    // Static Array of length 3
    // Person[3] public listOfPeople;
    // Dynamic Array 
    Person[] public listOfPeople;

    // 2. Define a function to add the new persons of type Person to the dynamic array
    function addPerson(uint256 _favourite_number, string memory _name) public{
        listOfPeople.push(Person({favourite_num: _favourite_number, name: _name}));
    }
}
