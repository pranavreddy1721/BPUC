// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionDemo {
    uint public number;

    function add(uint a, uint b) public pure returns (uint) { 
        return a + b; 
    } // Pure

    function getNumber() public view returns (uint) { 
        return number; 
    } // View

    modifier onlyPositive(uint _num) {
        require(_num > 0, "Must be positive"); 
        _;
    }

    function setNumber(uint _num) public onlyPositive(_num) { 
        number = _num; 
    }

    fallback() external payable {}
    receive() external payable {}
}
