// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/* There are three steps to build a crowdfunding platform:
1) Get the funds from the users. 
2) Set a minimum limit in USD to get the funds. (using require statement)
3) Withdraw the funds using master wallet. (wallet which designed the contract)
*/

contract FundMe{

    function fund() public payable { // Get funds and set minimum gas limits in USD
        require(msg.value>=1e9, "Can't Send less than 1 Gwei");
    }

    function withdraw() public{

    }

}