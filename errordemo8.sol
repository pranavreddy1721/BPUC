// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorDemo {
    uint public limit = 100;

    function setValue(uint value) public {
        // Require: Check input condition
        require(value <= limit, "Value exceeds the limit (100)");
        limit = value;
    }

    function internalCheck(uint factor) public view returns(uint) {
        // Assert: Check internal condition (should never fail)
        assert(factor > 0);
        return limit / factor;
    }

    function revertIfZero(uint x) public pure returns(uint) {
        // Revert: Explicitly trigger an error
        if (x == 0) {
            revert("Cannot accept zero input.");
        }
        return x;
    }
}
