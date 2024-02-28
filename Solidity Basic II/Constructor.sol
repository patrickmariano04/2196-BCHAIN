// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint256 public myNumber;
    mapping(address => uint256) public valueMapping;

    constructor() {
        myNumber = 42;
        valueMapping[msg.sender] = 100;
    }
}