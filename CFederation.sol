pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CFederation is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CFederation(address _owner)  UpgradeableToken(_owner) {
    name = "CFederation";
    symbol = "CFDT";
    totalSupply = 1723685200000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}