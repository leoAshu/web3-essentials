// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import { PriceConverter } from "./PriceConverter.sol";
error NotOwner();
error NotEnoughFunds();
error CallFailed();

contract FundMe {
    using PriceConverter for uint256;

    uint256 public constant MIN_USD = 50 * 1e18;

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    address public immutable i_owner;

    constructor() {
        i_owner = msg.sender;
    }

    function fund() public payable {
        // require(msg.value.getConversionRate() >= MIN_USD, "Didn't send enough!");
        if (msg.value.getConversionRate() < MIN_USD) { revert NotEnoughFunds(); }
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;
    }

    function withdraw() public onlyOwner {
        // reset amounts
        for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++) {
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
        
        // reset the funders list
        funders = new address[](0);

        // actually withdraw the funds
        // msg.sender = type address
        // payable(msg.sender) = type payable address
        
        // transfer
        // success or throws error
        // payable(msg.sender).transfer(address(this).balance);

        // send
        // returns a boolean if success or failure
        // bool sendSuccess = payable(msg.sender).send(address(this).balance);
        // require(sendSuccess, "Send failed");
        
        // call
        // can call any function
        // recommended
        (bool callSuccess,) = payable(msg.sender).call{value: address(this).balance}("");
        // require(callSuccess, "Call failed!");
        if (!callSuccess) { revert CallFailed(); }
    }

    modifier onlyOwner {
        // require(msg.sender == i_owner, "Sender is not owner!");
        if (msg.sender != i_owner) { revert NotOwner(); }
        _;
    }
}