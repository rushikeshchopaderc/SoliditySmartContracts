// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/* There are three steps to build a crowdfunding platform:
1) Get the funds from the users. 
2) Set a minimum limit in USD to get the funds. (using require statement)
3) Withdraw the funds using master wallet. (wallet which designed the contract)
*/

contract FundMe{
    uint256 public priceUSD= 5;

    function fund() public payable { // Get funds and set minimum gas limits in USD
        require(msg.value>=priceUSD, "Can't Send less than 1 Gwei");
        // To get the real-time price we can't make a http://api-call api call as smart contract does not understand the stuff outside the blockchain.
        // Hence data oracles like chainlink are used to deliver the real-time price data of ethereum. It interacts between the offchain and onchain data.
    }
    

    function withdraw() public{

    }

}