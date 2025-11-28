// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayDemo {

    uint[3] public fixedArray = [1, 2, 3];      // Fixed size array
    uint[] public dynamicArray;                 // Dynamic array

    function addElement(uint element) public {
        dynamicArray.push(element);             // Add element to dynamic array
    }

    function getDynamicArrayLength() public view returns(uint) {
        return dynamicArray.length;             // Length of dynamic array
    }
}
