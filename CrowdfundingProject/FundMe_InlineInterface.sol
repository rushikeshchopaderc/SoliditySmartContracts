// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/* There are three steps to build a crowdfunding platform:
1) Get the funds from the users. 
2) Set a minimum limit in USD to get the funds. (using require statement)
3) Withdraw the funds using master wallet. (wallet which designed the contract)
*/

// solhint-disable-next-line interface-starts-with-i
interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

contract FundMe{
    uint256 public priceUSD= 5;

    function fund() public payable { // Get funds and set minimum gas limits in USD
        require(msg.value>=priceUSD, "Can't Send less than 1 Gwei");
        // To get the real-time price we can't make a http://api-call api call as smart contract does not understand the stuff outside the blockchain.
        // Hence data oracles like chainlink are used to deliver the real-time price data of ethereum. It interacts between the offchain and onchain data.
    }

    function getPrice() public view returns(uint80,int256,uint256,uint256,uint80) {
        // A function to get the real price using chainlink data oracles. We need to get 2 things to get the price through an interface.
        // Address of the interface which has the price data: get it from the docs.chain.link page. 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI : Get the interface of the code. This will automatically create the code for the ABI. Get the interface from smartcontractkit/chainlink github page.
        // If unable to find the interface, use the github repo Cyfrin/foundry-full-course-cu
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).latestRoundData();

    }
    function withdraw() public{

    }

}