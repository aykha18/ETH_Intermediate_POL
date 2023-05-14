// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertExample {
    function divide(uint numerator, uint denominator) public pure returns (uint) {
        // Using assert to check for division by zero
        assert(denominator != 0);
        
        // Performing division
        uint result = numerator / denominator;
        
        return result;
    }
}