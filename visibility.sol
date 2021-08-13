//SPDX-License-Identifier: MIT
//Basic visibility example in Solidity.

pragma solidity 0.8.7;

contract Bank {
    mapping(address => uint256) balance;

    function addBalance(uint256 _toAdd) public returns (uint256) {
        balance[msg.sender] = balance[msg.sender] + _toAdd;
        return balance[msg.sender];
    }

    function getBalance() public view returns (uint256) {
        return balance[msg.sender];
    }

    function transfer(address recipient, uint256 amount) public {
        _transfer(msg.sender, recipient, amount);
    }

    function _transfer(
        address from,
        address to,
        uint256 amount
    ) private {
        balance[from] = balance[from] - amount;
        balance[to] = balance[to] + amount;
    }
}
