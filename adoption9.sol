// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Adoption {

    // Array stores the adopter's address for each pet ID. Max 16 pets.
    address[16] public adopters; 

    function adopt(uint petId) public returns (uint) {
        // Require: Check input for valid pet ID range
        require(petId >= 0 && petId <= 15, "Invalid Pet ID"); 
        
        // Record the sender's address as the adopter
        adopters[petId] = msg.sender; 
        
        return petId;
    }

    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
