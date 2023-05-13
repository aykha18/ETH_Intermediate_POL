// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract VendingMachine {
    mapping(address=> uint) public balances;

    function buy(address _address, uint _amount) public {
        uint eth = 789 / 2;
        require(_amount > eth ether,"Insufficient Eth Balance");
        balances[_address] -=_amount; 
    }
}