// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


//Deploying a contract from another contract using solidity import statement
import {SimpleStorage, SimpleStorage2} from "./SimpleStorage.sol";

// 'new' keyword is used to deploy another contract
contract StorageFactory{
    SimpleStorage public simpleStorage; // Defining a new contract: Data Type - SimpleStorage, visiblility - public, Variable/Object Name - simpleStorage
    function CreateSimpleStroageContract() public {
        simpleStorage = new SimpleStorage();
    }
}