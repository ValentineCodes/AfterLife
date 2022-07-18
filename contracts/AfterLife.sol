// SPDX-License-Identifier: MIT;
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "hardhat/console.sol";

error NotOwner();

contract AfterLife is ERC20, Ownable {
    /**
     * Create a token contract with name and symbol
     *
     * Sets the owner of the contract
     * Mint a total supply of 1000000000000000(1 Quadrillion) AfterLife tokens to contract creator
     */
    constructor() ERC20("AfterLife", "AL") {
        _mint(msg.sender, 1000000000000000 * 10**18);
    }

    /**
     * Changes the owner of the contract.
     * @notice Can only be called by the current contract owner
     */

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal view override onlyOwner {}
}
