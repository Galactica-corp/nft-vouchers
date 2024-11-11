// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract VoucherNFT is ERC721 {
    constructor() ERC721("VoucherNFT", "VOUCHER") {}
}
