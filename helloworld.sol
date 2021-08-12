//SPDX-License-Identifier: MIT
//Hello World in Solidity.

pragma solidity 0.8.7;

contract HelloWorld {
    function hello() public pure returns (string memory) {
        return "Hello World!";
    }
}
