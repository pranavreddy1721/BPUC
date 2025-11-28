// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasDemo {

    uint public counter;

    function runLoop(uint iterations) public {
        for (uint i = 0; i < iterations; i++) {
            counter += 1;   // increases gas as loop increases
        }
    }

}

contract Bank {

    mapping(address => uint) public balances;

    function deposit(uint amount) public {
        balances[msg.sender] += amount;
    }

    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }
}
