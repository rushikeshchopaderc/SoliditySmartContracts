pragma solidity ^0.8.26;
// SPDX-License-Identifier: MIT

// 1. When a variable/function is declared, it has two visibility options, public and private.
// 2. When a function is declared, it has 2 visibility options, external and internal (limited only to functions and not variables.) - 
// - External means only extenal contact can access the function.
// - Internal means only the current contract and the child contracts can access it( child contracts come fron class inheritance).
// 3. There are 4 Mutability options of a function: pure, view, nonpayable and payable (No gas is required to execute view or pure functions as they do not modify the variables.)
// - pure: could not read or update the state variables of the contract
// - view: can read from the state variable but can not update the values of the state variables.
// -

contract StorageContract{
    uint256 public favourite_number; // default set to 0;

    function setFavourateNumber(uint256 _favourite_number) public{
        favourite_number=_favourite_number;
    }

    function retrive() public view returns(uint256){
        return favourite_number;
    }
}