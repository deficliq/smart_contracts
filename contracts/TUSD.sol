pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TUSD is ERC20 {
  constructor() public ERC20("TrueUSD", "TUSD") {
  }

  function mint() public {
		require(balanceOf(msg.sender) == 0, "You already have coins");

		_mint(msg.sender, 1000 * (10 ** uint256(decimals())));
	}
}