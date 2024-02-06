// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyUpdatedToken is ERC20 {
    address public tokenOwner;

    modifier onlyTokenOwner() {
        require(msg.sender == tokenOwner, "Not the owner");
        _;
    }

    constructor() ERC20("MyUpdatedToken", "MUT") {
        tokenOwner = msg.sender;
        _mint(msg.sender, 1000000 * 10**decimals());
    }

    function mintTokens(address to, uint256 amount) external onlyTokenOwner {
        _mint(to, amount);
    }

    function burnTokens(uint256 amount) external {
        _burn(msg.sender, amount);
    }
     function transfer(address to, uint256 amount) public override returns (bool) {
        require(amount <= balanceOf(msg.sender), "Insufficient balance");
        _transfer(msg.sender, to, amount);
        return true;
    }
}
