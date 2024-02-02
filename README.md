MyUpdatedToken Smart Contract
Overview

This Solidity smart contract implements a basic ERC-20 token named "MyUpdatedToken" with the symbol "MUT." The contract provides standard functionalities for token transfers and approvals through the OpenZeppelin ERC20 contract. It also includes custom features such as minting and burning tokens, with access control to ensure only the token owner can perform certain operations.
Usage
Remix IDE

    Open the Remix IDE.
    Create a new file and paste the contract code.
    Compile the contract by selecting the correct Solidity version (0.8.0) from the compiler version dropdown.
    Deploy the contract by selecting the "Deploy and Run Transactions" tab, choosing "MyUpdatedToken" from the contract dropdown, and clicking the "Deploy" button.

Interacting with the Contract

    After deploying, you'll see the contract interface with the deployed contract instance.

    The mintTokens function allows the token owner to mint additional tokens and transfer them to a specified address.
        Click on the deployed contract instance.
        In the "Write" section, choose mintTokens from the dropdown.
        Enter the recipient address and the amount of tokens to mint.
        Click "Transact" to execute the minting.

    The burnTokens function enables token holders to burn a specific amount of their own tokens.
        Click on the deployed contract instance.
        In the "Write" section, choose burnTokens from the dropdown.
        Enter the amount of tokens to burn.
        Click "Transact" to execute the burning.

Access Control

The contract includes access control to certain functions through the onlyTokenOwner modifier. Only the token owner can mint tokens.
