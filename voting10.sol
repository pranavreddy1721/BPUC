// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {

    mapping (address => bool) public hasVoted;     // track who voted
    mapping (string => uint) public votes;         // candidate name => vote count
    string[] public candidateList;                 // list of candidates

    // Constructor: runs only once during deployment
    constructor(string[] memory _candidates) {
        candidateList = _candidates;
    }

    function vote(string memory candidateName) public {
        // Check 1: user has already voted?
        require(!hasVoted[msg.sender], "You have already voted.");

        // Check 2: candidate must be valid
        bool validCandidate = false;

        for (uint i = 0; i < candidateList.length; i++) {
            if (
                keccak256(abi.encodePacked(candidateList[i])) ==
                keccak256(abi.encodePacked(candidateName))
            ) {
                validCandidate = true;
                break;
            }
        }

        require(validCandidate, "Invalid candidate.");

        // Mark voter & add vote
        hasVoted[msg.sender] = true;
        votes[candidateName] += 1;
    }
}
