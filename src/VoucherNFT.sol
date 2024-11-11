// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {ERC721Burnable} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

contract VoucherNFT is ERC721Burnable {
    string private _uri;

    constructor(string memory name, string memory symbol, string memory uri, uint256 supply, address distributor)
        ERC721(name, symbol)
    {
        _uri = uri;
        _mintSupply(supply, distributor);
    }

    function _mintSupply(uint256 supply, address recipient) internal {
        // mint all NFTs and set the recipient as the owner
        for (uint256 i = 0; i < supply; i++) {
            _mint(recipient, i);
        }
    }

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 /*tokenId*/ ) public view override returns (string memory) {
        return _uri;
    }
}
