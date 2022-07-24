// SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MinimalERC721 is Ownable, ERC721{

    uint tokenId;

    constructor(
        string memory _tokenName,
        string memory _symbol
    ) ERC721(_tokenName, _symbol) {
    }

    function mintToken(
        address recipient
    ) public {
        _safeMint(recipient, tokenId);
        tokenId = tokenId + 1;
    }
}
