// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {VoucherNFT} from "../src/VoucherNFT.sol";

contract VoucherNFTScript is Script {
    VoucherNFT public nft;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        nft = new VoucherNFT(
            "Voucher NFT",
            "VOUCHER",
            "https://voucher.com/voucher",
            10,
            address(this)
        );

        vm.stopBroadcast();
    }
}
