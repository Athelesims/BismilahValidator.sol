# BismilahValidator.sol
// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  
contract BismillahValidator {  
  function start(bytes32 bismillahHash) public pure returns (bool) {  
    require(bismillahHash == keccak256("بِسْمِ اللهِ"), "HC: Start with Bismillah");  
    return true;  
  }  
}
// Run in Remix console:
web3.utils.keccak256("بِسْمِ اللهِ")  
// Returns: "0x9f2d..."
