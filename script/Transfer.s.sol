// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {VoucherNFT} from "../src/VoucherNFT.sol";

contract TransferScript is Script {
    VoucherNFT public nft;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        // Read and parse JSON inputs
        string memory root = vm.projectRoot();
        string memory path = string.concat(root, "/script/inputData/transfer.json");
        string memory json = vm.readFile(path);

        address nftAddress = abi.decode(vm.parseJson(json, ".nftAddress"), (address));
        address owner = abi.decode(vm.parseJson(json, ".sender"), (address));
        address[] memory recipients = abi.decode(vm.parseJson(json, ".recipients"), (address[]));

        console.log("NFT Address:", nftAddress);
        nft = VoucherNFT(nftAddress);
        console.log("NFT Name:", nft.name());
        console.log("Sender:", owner);

        require(nft.balanceOf(owner) >= recipients.length, "Sender does not own enough NFTs");

        uint256 nftId = 0;

        for (uint256 i = 0; i < recipients.length; i++) {
            address recipient = recipients[i];
            console.log("Recipient:", recipient);

            // find the first NFT ID owned by the sender (assuming the NFT ids are sequential)
            while (nft.ownerOf(nftId) != owner) {
                nftId++;
            }

            console.log("NFT ID:", nftId);
            nft.transferFrom(owner, recipient, nftId);
            nftId++;
        }

        vm.stopBroadcast();
    }
}
