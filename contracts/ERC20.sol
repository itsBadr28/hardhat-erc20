// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract ERC20 {
    uint256 public totalSupply;
    string public name;
    string public symbol;
    uint8 public decimals;

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol
    }

    function decimals() external pure returns (unit8) {
        return 18;
    }
}