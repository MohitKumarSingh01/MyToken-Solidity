# MyToken Solidity Contract

## Overview

The `MyToken` Solidity contract is a basic token management system that allows minting new tokens and burning existing tokens.

- Token Name: Ether
- Token Abbreviation: ETH
- Initial Total Supply: 1,000,000

## Contract Functions

### Mint Tokens

The `mint` function allows the creation of new tokens and assigns them to a specified address.

```solidity
function mint(address recipient, uint amount) public {
    totalsupply += amount;
    tokenBalances[recipient] += amount;
}
```

### Burn Tokens

The `burn` function allows the destruction of tokens from a specified address, reducing the total token supply.

```solidity
function burn(address account, uint amount) public {
    require(tokenBalances[account] >= amount, "Not enough tokens to burn");
    totalsupply -= amount;
    tokenBalances[account] -= amount;
}
```

## Usage

1. Deploy the `MyToken` contract on a compatible blockchain network.
2. Use the `mint` function to create new tokens for specific addresses.
3. Use the `burn` function to destroy tokens from specific addresses.

## License

This Solidity contract is licensed under the MIT License.
