pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DeficliqToken is ERC20 {
    constructor() public ERC20("Deficliq Token", "PIE") {
        _mint(msg.sender, 220000000 * (10 ** uint256(decimals())));
    }
}