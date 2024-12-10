/* Deploying to Eth mainnet is expensive so we deploy to L2 instead. Some popular L2s are ZKSync, Optimism, Arbitrum, Polygon, etc.

Main (Sepolia): Sepolia GCP Faucet
Alchemy Faucet (Sepolia): https://sepoliafaucet.com/
Infura Faucet (Sepolia): https://www.infura.io/faucet/sepolia
Chainlink Faucet (Sepolia): https://faucets.chain.link/sepolia
No need for 0.001 ETH on mainnet
ZKsync Faucets (ZKsync Sepolia): https://docs.zksync.io/build/tooling/network-faucets.html
ZKsync Bridge: https://portal.zksync.io/bridge/
*/

// By default there is some sepolia testnet Eth available, if not you can refer the abouve documentation to get some.
// Step 1:You should add the zksync sepolia testnet (or any other main network) to your metamask wallet in order to swap the eth with zkSepoliaETH. Orherwise the funds will be lost.
// To add zksync seplia testnet go to chainlist website( also given in the foundry course github repo) https://chainlist.org/ and add zksync sepolia testnet to metamask wallet.
// Step 2:Connect the metamask wallet and choose Sepolia testnet network. Then swap some sepoliaETH to ZKSync ETH and then deploy the contract.
// Step 3: Go to ZKsync Bridge: https://portal.zksync.io/bridge/ and follow the steps to swap the ETH on sepolia testnet with zksync ETH. make sure testnets are selected on metamask and the website.

