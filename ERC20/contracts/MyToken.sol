// https://qiita.com/amachino/items/8cf609f6345959ffc450
// https://qiita.com/Yaggytter/items/9df7e35e8725c3baad82
pragma solidity ^0.4.18;

import "zeppelin-solidity/contracts/token/StandardToken.sol"; // import

contract MyToken is StandardToken {
  // token needs name and symbol
  string public name = "MyToken";
  string public symbol = "MTKN";
  uint public decimals = 18; // ?: what is this for?

  function MyToken(uint initialSupply, uint maxSupply) public {
    totalSupply = initialSupply; // https://github.com/OpenZeppelin/zeppelin-solidity/blob/master/contracts/token/ERC20Basic.sol
    maxSupply = maxSupply;
    balances[msg.sender] = initialSupply;
  }
}
