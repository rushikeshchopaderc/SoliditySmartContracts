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
    mapping(string=>uint256) public nameToFavouriteNumber; // Used to fetch favourite number from name using mapping(dictionary)

    function addPerson( string memory _name, uint256 _favourite_number) public virtual returns(string memory,uint256) {
        listOfPeople.push(Person(_favourite_number, _name));
        nameToFavouriteNumber[_name] = _favourite_number;
        return (_name,_favourite_number);
    }
}

contract SimpleStorage2{}
contract SimpleStorage3{}
contract SimpleStorage4{}