// SPDX-License-Identifier: MIT
// Developer scharss.github.io
// Smart contract Address 0xB9ba3cbb639326320Fdf4D0A97C19f599522e81D
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.4.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.4.0/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.4.0/access/Ownable.sol";
import "@openzeppelin/contracts@4.4.0/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts@4.4.0/token/ERC20/extensions/ERC20Votes.sol";

/// @custom:security-contact scharss@gmail.com
contract MercaBit is ERC20, ERC20Burnable, Ownable, ERC20Permit, ERC20Votes {
    constructor() ERC20("MercaBit", "MBT") ERC20Permit("MercaBit") {
        _mint(msg.sender, 1000000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // The following functions are overrides required by Solidity.

    function _afterTokenTransfer(address from, address to, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._burn(account, amount);
    }
}
