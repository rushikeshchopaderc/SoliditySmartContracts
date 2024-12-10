// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage{
    // defining a struct
    struct Person{
        uint256 favourite_num;
        string name;
    }
    // defining a dynamic array
    Person[] public listOfPeople;

    // defining a mapping
    mapping(string=>uint256) public nameToFavouriteNumber;

    function addPerson( string memory _name, uint256 _favourite_number) public returns(uint256) {
        listOfPeople.push(Person(_favourite_number, _name));
        return nameToFavouriteNumber[_name] = _favourite_number;
    }

}