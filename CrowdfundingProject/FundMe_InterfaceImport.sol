// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/* There are three steps to build a crowdfunding platform:
1) Get the funds from the users. 
2) Set a minimum limit in USD to get the funds. (using require statement)
3) Withdraw the funds using master wallet. (wallet which designed the contract)
*/

import {AggregatorV3Interface} from "@chainlink/contracts@1.2.0/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe{
    uint256 public minPriceUSD= 5e18; // Getting 5 USD as minimum donation.
    address public funders; //Creating a list of funders
    mapping(address funder=>uint256 amountFunded) public funderToAmountMapping;// Get the mappkn of the sender to the amount sent.
    address public owner;

    // A constructor works the same way as that of __init__() in vyper/python. This is called only once and stores the variables.
    constructor(){
        owner=msg.sender; // Setting the owner to the msg.sender so that only the owner of this contract should be able to withdraw the funds.
    }

    function fund() public payable { // Get funds and set minimum gas limits in USD
        require(getConversionRate(msg.value)>=minPriceUSD, "Can't Send less than 1 Gwei");
        // To get the real-time price we can't make a http://api-call api call as smart contract does not understand the stuff outside the blockchain.
        // Hence data oracles like chainlink are used to deliver the real-time price data of ethereum. It interacts between the offchain and onchain data.
        funders.push(msg.sender); //Another global/environment variable;
        funderToAmountMapping[msg.sender]=funderToAmountMapping[msg.sender]+msg.value; // Already existing value +Additionally sent value, in case a sender sends twice
    
    }

    function getPrice() public view returns(uint256) {
        // A function to get the real price using chainlink data oracles. We need to get 2 things to get the price through an interface.
        // Address of the interface which has the price data: get it from the docs.chain.link page. 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI : Get the interface of the code. This will automatically create the code for the ABI. Get the interface from smartcontractkit/chainlink github page.
        // If unable to find the interface, use the github repo Cyfrin/foundry-full-course-cu
        AggregatorV3Interface priceFeedObject= AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int256 priceUSD,,,) = priceFeedObject.latestRoundData();
        return uint256(priceUSD * 1e10); //To make the msg.value and priceUSD in same denomination. You can call the decimals function from AggregatorV3Interface to know the number of decimals but we know that it is 8 in this case.
        // Making the datatype same for msg.value and priceUSD by typecasting to uint256
    }

    function getConversionRate(uint256 ethAmount) public view returns(uint256){
        // A function to convert the ETH price from msg.value to USD.
        uint256 ethPrice = getPrice();
        uint256 amountUSD = (ethAmount * ethPrice)/1e18; 
        return amountUSD;
    }
    function withdraw() public{
        require(msg.sender==owner, " You are not the owner. Hence you can't withdraw the funds");
        for (uint256 funderIndex=0; funderIndex<len(funders); funderIndex++){
            address funder = funders[funderIndex];
            funderToAmountMapping[funder]=0; // resetting the value to 0
        }

        //Resetting the funds
        funders= new address[][0];
        //Withdraw the funds. There are three ways to send money in solidity- transfer, send, call.
        // 1. Transfer - It automatically reverts if the transaction fails due to gas limit.
        // payable(msg.sender).transfer(address(this).balance);
        // 2. Send - It does not fail, but gives a boolean if the transaction was successful or not. So we need to insert an additional revert statement while using send.
        // bool SendSuccess = payable(msg.sender).send(address(this).balance);
        // require(SendSuccess, "Sending Failed");
        // 3. Call (Recommended) - It doesn't have a gas limit and sends all the gas/the gas set by the user. It is a lower level function that can call any function in EVM without the need of an ABI. 
        // If no function is passed inside it, it acts as a regular transaction.
        (bool success,bytes memory dataReturned)= payable(msg.sender).call{value: address(this).balance}("");
        require(success, "Sending Failed");
        
    }

}