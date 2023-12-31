// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// install @chainlink/contracts dependency for import to work
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    // external data
    // requires a decentralized oracle network - Chainlink
    uint256 public minimumUSD = 50 * 1e18;

    function fund() public payable {
        // Want to be able to set a minimum fund amount
        // 1. How do we send ETH to this contract?
        require(getConversionRate(msg.value) >= minimumUSD, "Didn't send enough!");

        // What is reverting?
        // Undo any action before, and send remaining gas back
    }

    function getPrice() public view returns(uint256) {
        // ABI
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        (,int256 answer,,,) = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).latestRoundData();
        return uint256(answer * 1e10);
    }

    function getVersion() public view returns (uint256) {
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }

    function getConversionRate(uint256 ethAmount) public view returns(uint256) {
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUSD = (ethPrice * ethAmount) / 1e18;
        return ethAmountInUSD;
    }
}