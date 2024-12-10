// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


//Deploying a contract from another contract using solidity import statement
import {SimpleStorage, SimpleStorage2} from "./SimpleStorage.sol";

// 'new' keyword is used to call another contract
contract StorageFactory{
    // SimpleStorage public simpleStorage; // Defining a new contract: Data Type - SimpleStorage, visiblility - public, Variable/Object Name - simpleStorage
    SimpleStorage[] public listOfSimpleStorageContracts; //Defining a dynamic array of type SimpleStorage Contract Type


    function CreateSimpleStroageContract() public { // One can form multiple objects of the same contract SimpleStorage using this and maintains it in a list.
        // SimpleStorage simpleStorage = new SimpleStorage(); // Calling the contract SimpleStorage and assigning it to the variable simpleStorage
        SimpleStorage simpleStorageContractVariable = new SimpleStorage();
        listOfSimpleStorageContracts.push(simpleStorageContractVariable);
    }
    function sfAddPerson(uint256 _listIndex, string memory _name, uint256 _favourite_number) public{ 
        // To interact with the smart contract you need the smart contract address and the ABI- ABIs are all the buttons that the contract shows.
        // Takes the index of the dynamic array formed above and returns the value of favourite number to name and returns it to the caller.
        listOfSimpleStorageContracts[_listIndex].addPerson(_name, _favourite_number);
    }
}