# MyToken Smart Contract
This is a simple smart contract implemented in Solidity for creating and managing an ERC-20 like token. Below is a brief overview of its functionality and features:

## Features
### 1. Token Properties:

tokenName: Name of the token.
tokenAbbrv: Abbreviation (symbol) of the token.
totalSupply: Total supply of the tokens in circulation.
### Balances Mapping:

balances: A mapping that keeps track of the token balance of each address.
### Constructor:

Initializes the token with a name, abbreviation, and total supply.
The total supply is assigned to the creator's address (the deployer of the contract).
### Mint Function:

Allows the creation of new tokens.
Increases the totalSupply by the specified amount.
Adds the specified amount to the balance of the given address.
### Burn Function:

Allows the destruction of tokens.
Requires that the address has a sufficient balance to burn.
Decreases the totalSupply by the specified amount.
Subtracts the specified amount from the balance of the given address.
Contract Code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

## Usage
Deployment: 
Deploy the contract with initial values for tokenName, tokenAbbrv, and totalSupply. The deployer will receive the initial totalSupply.
Minting Tokens: Call the mint function with the address to receive the tokens and the amount to mint. Only the deployer can mint new tokens.
Burning Tokens: Call the burn function with the address to burn the tokens from and the amount to burn. Ensure the address has sufficient tokens to burn.
License
This contract is licensed under the MIT License.