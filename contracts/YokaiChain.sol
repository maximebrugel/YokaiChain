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
    uint256 private constant _unitPrice = 0.02 ether;

    /// @dev Increase of the price every step
    uint256 private constant _increasedPrice = 0.005 ether;

    /// @dev Number of sales to increase the price
    uint256 private constant _step = 5000;

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

    function createTest(
        uint8 hair,
        uint8 eye,
        uint8 eyeBrow,
        uint8 nose,
        uint8 mouth,
        uint8 mark,
        uint8 earrings,
        uint8 accessory,
        uint8 mask,
        uint8 skin
    ) public payable nonReentrant {
        uint256 seed = block.timestamp << (1);
        uint256 nextTokenId = totalSupply() + 1;
        Detail memory newDetail = Detail({
            hair: hair,
            eye: eye,
            eyebrow: eyeBrow,
            nose: nose,
            mouth: mouth,
            mark: mark,
            earrings: earrings,
            accessory: accessory,
            mask: mask,
            skin: skin,
            timestamp: block.timestamp,
            creator: msg.sender
        });
        _detail[nextTokenId] = newDetail;
        _safeMint(msg.sender, nextTokenId);
    }

    /// @notice Create randomly an Yokai
    /// @param qty The quantity to buy
    function create(uint256 qty) public payable nonReentrant {
        require(msg.value >= getUnitPrice() * qty, "FTM sent is not correct");
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

    /// @notice Get the current price of one Yokai
    /// The price is progressive. Every 5000 sales, the price increases by 0.01 ether
    /// @return The Yokai price
    function getUnitPrice() public view returns (uint256) {
        return ((totalSupply() / _step) * _increasedPrice) + _unitPrice;
    }

    /// @notice Send funds from sales to the team
    function withdrawAll() public payable onlyOwner {
        uint256 amount = address(this).balance;
        // TODO add multisig address
        require(payable(0x838D23a8A17adaa6866969b86D35Ac0941C67510).send(amount));
    }

    /// @inheritdoc IYokaiChain
    function details(uint256 tokenId) external view override returns (Detail memory detail) {
        detail = _detail[tokenId];
    }
}
