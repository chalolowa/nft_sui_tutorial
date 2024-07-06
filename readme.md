# NFT Sui Tutorial

This Move module, `nft_sui_tutorial`, provides basic functionality for minting and transferring NFTs on the Sui blockchain. It includes definitions for an `NFT` struct and functions for minting and transferring these NFTs.

## Overview

The module defines an `NFT` struct with three fields: `id`, `name`, and `description`. The `id` is a unique identifier, while `name` and `description` are strings that describe the NFT. The module includes two public entry functions:

- `mint`: Creates a new NFT and transfers it to the caller.
- `transfer`: Transfers an existing NFT to another address.

