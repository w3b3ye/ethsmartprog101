//SPDX-License-Identifier: MIT
//Destroyable - A contract to provide self-destruct functionality.

pragma solidity 0.7.6;

contract Destroyable {
    address payable private owner;

    constructor() {
        owner = msg.sender;
    }

    function destruct() public {
        selfdestruct(owner);
    }
}
