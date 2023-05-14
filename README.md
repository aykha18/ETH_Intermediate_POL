# ETH_Intermediate_POL
Develop Smart Contracts in Solidity

## Description

How to use require, revert and assert methods in SmartContracts. Each examples tries to explain the use of these method through used cases like Vending Machine, Voterlist and others. 

## Getting Started
* Download the repository files
* Go to https://remix.ethereum.org/
* Upload or Copy all the file to contract folder
* Open any SmartContract file and compile.
* Go to Deploy tab on the left and click Deploy
* Test the SmartContracts with different inputs.


### Executing program
There are 3 Contracts:
**require_test.sol**
This contract provides a simple parking ticket system where users can buy tickets by sending Ether to the contract, and the contract keeps track of the parking balances of each address.
Here's an explanation of the code:

*address public owner: Declares a public state variable owner of type address to store the address of the contract owner.

*mapping(address => uint) public parkingBalances: Declares a public mapping parkingBalances that maps addresses to uint values, representing the parking balances of each address.
*constructor(): The constructor function is executed only once during the contract deployment. It sets the owner variable to the address of the contract deploye (msg.sender) and initializes the parking balance of the contract itself (address(this)) to 1000.

*function getBalance() public view returns (uint): This function allows users to view the parking balance of the contrat. It returns the parking balance associated with the contract address (address(this)).

*function buyTicket(uint amount) public payable: This function is used to buy parking tickets by sending Ether to the contract. It takes an input parameter amount, representing the number of parking tickets to buy.

*The require statement checks if the value of Ether sent with the transaction (msg.value) is greater than or equal to amount * 0.2 ether. This ensures that the user pays at least 0.2 ether per parking ticket.

*Another require statement checks if the parking balance of the contract (parkingBalances[address(this)]) is greater than or equal to the desired amount. This ensures that there are enough parking places available.

*If both require statements pass, the parking balance of the contract is reduced by amount, and the parking balance of the message sender (msg.sender) is increased by amount.

**revert.sol**
This is a smart contract named VotingList that keeps track of the population and voter registratio in different cities.
*uint public totalPopulation = 30000;: Declares a public state variable totalPopulation and initializes it with a value of 30000, representing the total population limit.

*string[3] cities = ['Alabama','Alaska','Arizona'];: Declares a fixedsize array cities of type string that holds the names of three cities.

*mapping(string => uint) public cityPopulation;: Declares a public mapping cityPopulation that maps city names (as strings) to their respective populations (as uint values).

*constructor(): The constructr function is executed only once during the contract deployment. It initializes the population of each city by assigning values to cityPopulation using the city names as keys.

*function addVoter(uint _age, string memory _Name, string memory _city) public: This function is used to add a voter to a specific city. It takes 3 input parameters: _age representing the age of the voter, _Name representing the name of the voter (unused in the current code), and _city representng the name of the city where the voter is being registered.

*The require statement checks if the _age is greater than or equal to 18, ensuring that the voter is at least 18 yrs old.

*Inside the for loop, the currentPopulation is calculated by summing up the population of each city in the cityPopulation mapping.

*The loop also checks if the _city matches any of the cities in the cities array using keccak256 to compare their hashes. If a match is found, the cityexist variable is set to true, and the population count of that city is incremented by 1.

*The line console.log("currentPopulation",currentPopulation); is used to log the value of currentPopulation to the console for debugging purposes.

*The final require statement checks if cityexist is false (indicating that the provided city does not exist in the cities array) or if currentPopulation is greater than or equal to totalPopulation. If either condition is true, it reverts the transaction and displays the error message "Something Went Wrong...".

**assert_test.sol**
This is a smart contract named AssertExample that demonstrates the use of assert in Solidity.
*function divide(uint numerator, uint denominator) public pure returns (uint): This function takes two input parameters, numerator and denominator, and performs division. It is defined as pure to indicate that it does not modify the contract's state and only returns a value.

*assert(denominator != 0): The assert statement is used to check a conditon that is expected to always be true. In this case, it verifies that the denominator is not zero. If the condition evaluates to false, it means there is a division by zero error, and the execution of the contract is immediately halted, reverting any changes made and consuming all gas for the current transaction.

*uint result = numerator / denominator;: After the assert statement, the code proceed to perform the division operation by dividing the numerator by the denominator. This assumes that the denominator is not zero, as the assert statement has already checked for that condition.

*return result;: Finally, the result of the division operation is returnd as the output of the function.

## Help

Connect to me at khanayubchand@gmail.com

## Authors

Contributors names and contact info
Ayub Khan  
Discord: Userid - Aykha#7280


## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details
