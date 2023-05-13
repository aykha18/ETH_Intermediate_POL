// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract BusTickets{
    mapping(address=> uint) balances;

    function BuyTickets(address _address, uint _quantity, _fromStation string, _toStation string )
    {
        if(_fromStation ==_toStation){
            revert("Please Specify Correct  ...");
            uint total_amount = 100 * _quantity;
            require(balances[_address] >= 100 * total_amount,"Insufficient Ether Balance...");
            balances[_address] -= total_amount;
        }
    }
}