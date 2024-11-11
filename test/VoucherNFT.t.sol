// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {VoucherNFT} from "../src/VoucherNFT.sol";

contract VoucherNFTTest is Test {
    VoucherNFT public nft;

    function setUp() public {
        nft = new VoucherNFT("Voucher NFT", "VOUCHER", "https://voucher.com/voucher", 100, address(this));
    }

    // function test_Increment() public {
    //     counter.increment();
    //     assertEq(counter.number(), 1);
    // }

    function test_Mint() public view {
        assertEq(nft.balanceOf(address(this)), 100);
    }

    function test_transfer() public {
        nft.transferFrom(address(this), address(1), 0);
        assertEq(nft.balanceOf(address(1)), 1);
    }

    function test_burn() public {
        nft.burn(10);
        assertEq(nft.balanceOf(address(this)), 99);
    }
}
