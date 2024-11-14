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
            "Test Voucher", "TV", "https://test.galactica.com", 10, 0x018448224E6Bf248dA52e4693886955e023E0737
        );

        vm.stopBroadcast();
    }
}
