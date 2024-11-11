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
            "Galactica Community Voucher - 1000 GNET",
            "GCV1000",
            "https://quicknode.quicknode-ipfs.com/ipfs/QmT9mHQcZsirYYsTpLBS9H4bZ1t3p6ZxiT9W4F3QWvRd8C",
            1000,
            0x46CD33b489D31E63eD722263A2397DbAEcb01FF8
        );

        vm.stopBroadcast();
    }
}
