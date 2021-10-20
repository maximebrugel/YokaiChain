// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./interfaces/IYokaiChain.sol";
import "./interfaces/IYokaiChainDescriptor.sol";

/// @title YokaiChain NFTs
/// @notice On-chain generated NFTs
contract YokaiChain is ERC721Enumerable, Ownable, IYokaiChain, ReentrancyGuard {
    /// @dev Price for one Yokai (at the beggining)
    uint256 private constant _unitPrice = 33 ether;

    /// @dev The token ID Yokai detail
    mapping(uint256 => Detail) private _detail;

    /// @dev The address of the token descriptor contract, which handles generating token URIs.
    address private immutable _tokenDescriptor;

    constructor(address _tokenDescriptor_) ERC721("YokaiChain", "YOKAI") {
        _tokenDescriptor = _tokenDescriptor_;
    }

    // save bytecode by removing implementation of unused method
    function _baseURI() internal view virtual override returns (string memory) {}

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        return IYokaiChainDescriptor(_tokenDescriptor).tokenURI(this, tokenId);
    }

    /// @notice Create randomly an Yokai
    /// @param qty The quantity to buy
    function create(uint256 qty) public payable nonReentrant {
        require(msg.value >= _unitPrice * qty, "FTM sent is not correct");
        require(totalSupply() + qty <= 8753, "Cant mint more than 8753 Yokai");
        require(qty <= 99, "Yokai max mintable quantity is 99");

        for (uint256 i; i < qty; i++) {
            uint256 seed = block.timestamp << (i + 1);
            uint256 nextTokenId = totalSupply() + 1;
            Detail memory newDetail = Detail({
                hair: IYokaiChainDescriptor(_tokenDescriptor).generateHairId(nextTokenId, seed),
                eye: IYokaiChainDescriptor(_tokenDescriptor).generateEyeId(nextTokenId, seed),
                eyebrow: IYokaiChainDescriptor(_tokenDescriptor).generateEyebrowId(nextTokenId, seed),
                nose: IYokaiChainDescriptor(_tokenDescriptor).generateNoseId(nextTokenId, seed),
                mouth: IYokaiChainDescriptor(_tokenDescriptor).generateMouthId(nextTokenId, seed),
                mark: IYokaiChainDescriptor(_tokenDescriptor).generateMarkId(nextTokenId, seed),
                earrings: IYokaiChainDescriptor(_tokenDescriptor).generateEarringsId(nextTokenId, seed),
                accessory: IYokaiChainDescriptor(_tokenDescriptor).generateAccessoryId(nextTokenId, seed),
                mask: IYokaiChainDescriptor(_tokenDescriptor).generateMaskId(nextTokenId, seed),
                skin: IYokaiChainDescriptor(_tokenDescriptor).generateSkinId(nextTokenId, seed),
                timestamp: block.timestamp,
                creator: msg.sender
            });
            _detail[nextTokenId] = newDetail;
            _safeMint(msg.sender, nextTokenId);
        }
    }

    /// @notice Send funds from sales to the team
    function withdrawAll() public {
        uint256 amount = address(this).balance;
        require(payable(0x85B6bE6Af303a2846fDd874966E469B956AF59d9).send(amount));
    }

    /// @inheritdoc IYokaiChain
    function details(uint256 tokenId) external view override returns (Detail memory detail) {
        detail = _detail[tokenId];
    }
}
