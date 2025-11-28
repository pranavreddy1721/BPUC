// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserBalances {

    // Mapping: address (key) => uint (value/balance)
    mapping(address => uint) public balances; 

    function deposit(uint amount) public {
        balances[msg.sender] += amount;
    }

    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
    }
}
