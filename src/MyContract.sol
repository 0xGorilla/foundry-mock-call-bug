// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

interface IMonster {
  function eat(uint256 _amount) external;
  function drink(uint256 _amount) external returns (bool);
}

contract MyContract {
  function runEat(address _monster, uint256 _eatAmount) external {
    IMonster(_monster).eat(_eatAmount);
  }
  
  function runDrink(address _monster, uint256 _eatAmount) external {
    IMonster(_monster).drink(_eatAmount);
  }
}
