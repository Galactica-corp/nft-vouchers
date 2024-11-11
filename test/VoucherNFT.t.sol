// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {VoucherNFT} from "../src/VoucherNFT.sol";

contract VoucherNFTTest is Test {
    VoucherNFT public nft;

    function setUp() public {
        nft = new VoucherNFT();
    }

    // function test_Increment() public {
    //     counter.increment();
    //     assertEq(counter.number(), 1);
    // }
}
