//SPDX-License-Identifier: MIT
//Ownable - A contract to check ownership.

pragma solidity 0.7.6;

contract Ownable {
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _; //run the function
    }

    constructor() {
        owner = msg.sender;
    }
}
