// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;
import "hardhat/console.sol";

contract VotingList {
    uint public totalPopulation  = 30000;
    string[3] cities =['Alabama','Alaska','Arizona'];
    mapping(string=> uint) public cityPopulation;
   
    constructor () {
        cityPopulation['Alabama'] = 9993;
        cityPopulation['Alaska'] = 11000;
        cityPopulation['Arizona'] = 9000;
    }
    
    function addVoter(uint _age, string memory _Name , string memory _city ) public  {
        bool cityexist ;
        uint currentPopulation = 0;

        require(_age >= 18,"A voter must be 18 yrs of Age... ");
        for(uint i=0; i < cities.length; i++){
            currentPopulation += cityPopulation[cities[i]];
            if (keccak256(bytes(cities[i])) == keccak256(bytes(_city))) {
                cityexist = true;
                cityPopulation[cities[i]] +=1;
                // break;
            }
        }
        console.log("currentPopulation",currentPopulation);
        if(cityexist == false || currentPopulation >= totalPopulation) {
            revert("Something Went Wrong...");
        }
        
    }
}
