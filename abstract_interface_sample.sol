// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

abstract contract MyAbstractContract {
    function abstractFunction() public virtual returns (uint);
}

interface MyInterface {
    function interfaceFunction() external view returns (string memory);
}

contract MyContract is MyAbstractContract, MyInterface {
    function abstractFunction() public override returns (uint) {
        // Implement the abstract function here
        return 42;
    }

    function interfaceFunction() external view override returns (string memory) {
        // Implement the interface function here
        return "Hello, World!";
    }
}
