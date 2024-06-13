// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public tokenName = "Ether";
    string public tokenAbbrv = "ETH";
    uint public totalsupply = 0;

    // Mapping to track the token balance of each address
    mapping(address => uint) public tokenBalances;

    // Function to mint new tokens and assign them to a specified address
    function mint(address recipient, uint amount) public {
        totalsupply += amount;
        tokenBalances[recipient] += amount;
    }

    // Function to burn tokens from a specified address, reducing the total supply
    function burn(address account, uint amount) public {
        require(tokenBalances[account] >= amount, "Not enough tokens to burn");
        totalsupply -= amount;
        tokenBalances[account] -= amount;
    }
}
