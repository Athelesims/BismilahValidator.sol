// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";  

contract HumanityToken is ERC20 {  
    address public owner;  

    constructor() ERC20("Humanity Coin", "HUM") {  
        owner = msg.sender;  
        _mint(msg.sender, 1000000000 * 10**18); // 1B HUM  
    }  

    // Mint new tokens (restricted to owner)  
    function mint(address to, uint256 amount) public {  
        require(msg.sender == owner, "Only owner can mint");  
        _mint(to, amount);  
    }  
}