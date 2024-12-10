// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// To get all the functionalities of a contract we can inherit it. Eg. We want to add 5 to any number in the favourite number of the SimpleStorageContract.

import {SimpleStorage} from "./SimpleStorage.sol";

// you need to add the keyword virtual to the parent contract in order to make it mutable in the child contract.
// To change the operation of the parent contract, you need to write the keyword override in the child contract.

contract AddFivetoFavouriteNumber is SimpleStorage{ // Inheritance declared

    uint256 public newFavouriteNumber;

    function addPerson(string memory _name, uint256 _favourite_number) public override returns(string memory,uint256){
        newFavouriteNumber = _favourite_number + 5;
        return (_name, newFavouriteNumber);
    }
}