// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;
contract ParkingTicket {
    address public owner;
    mapping(address=> uint) public parkingBalances;

    constructor() {
        owner = msg.sender;
        parkingBalances[address(this)] = 1000;
    }

    function getBalance() public view returns (uint) {
        return parkingBalances[address(this)];
    }

    function buyTicket(uint amount) public payable{
        require(msg.value >= amount * 0.2 ether, "You must pay at least 0.5 ether for Ticket");
        require(parkingBalances[address(this)] >= amount, "Not Enough Parking Place");
        parkingBalances[address(this)] -= amount;
        parkingBalances[msg.sender] += amount;

    }
}