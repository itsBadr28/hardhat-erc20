// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract ERC20 {
    uint256 public totalSupply;
    string public name;
    string public symbol;
    // uint8 public decimals;

    mapping (address => uint256) public balanceOf;

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol
    }

    function decimals() external pure returns (unit8) {
        return 18;
    }

    function transfer(address recipient,unit256 amount) external returns (bool) {
        require(recipient != address(0), "ERC20: transfer to the zero address");
        uint256 senderBalance = balanceOf[msg.sender];
        require(senderBalance >= amount, "ERC20: transfer amount exceeds balance");
        balanceOf[msg.sender] = senderBalance - amount;
        balanceOf[recipient] += amount;
        return true;
    }
} 