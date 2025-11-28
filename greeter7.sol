// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IGreeter { // Interface (Blueprint)
    function getGreeting() external view returns (string memory);
    function setGreeting(string memory newGreeting) external;
}

contract Greeter is IGreeter { // Implementation Contract
    string private greeting = "Hello Interface";

    function getGreeting() external view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory newGreeting) external {
        greeting = newGreeting;
    }
}
