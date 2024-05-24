// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract MyToken {

    string public tokenName;
    string public tokenAbbrv;
    uint public totalSupply;

    // Mapping variable here
    mapping(address => uint) public balances;

    constructor(string memory _tokenName, string memory _tokenAbbrv, uint _totalSupply) {
        tokenName = _tokenName;
        tokenAbbrv = _tokenAbbrv;
        totalSupply = _totalSupply;
        balances[msg.sender] = _totalSupply;
    }

    // Mint function
    function mint(address _address, uint value) public {
        totalSupply += value;
        balances[_address] += value;
    }

    // Burn function
    function burn(address _address, uint value) public {
        require(balances[_address] >= value, "Insufficient balance to burn");
        totalSupply -= value;
        balances[_address] -= value;
    }
}