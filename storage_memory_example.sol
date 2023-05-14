// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract VendingMachine {
    mapping(address=> uint) public balances;// storage variable 
    
    function buy(address _address, uint _amount) public {
        // function arguments are example of memory variable, which persist during function execution.
        require(_amount > eth ether,"Insufficient Eth Balance");
        balances[_address] -=_amount; 
    }
}
