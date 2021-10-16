// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "./libraries/NFTDescriptor.sol";
import "./libraries/DetailHelper.sol";
import "base64-sol/base64.sol";
import "./interfaces/IYokaiChainDescriptor.sol";
import "./interfaces/IYokaiChain.sol";

/// @title Describes Yokai
/// @notice Produces a string containing the data URI for a JSON metadata string
contract YokaiChainDescriptor is IYokaiChainDescriptor {
    /// @dev Max value for defining probabilities
    uint256 internal constant MAX = 100000;

    uint256[] internal BACKGROUND_ITEMS = [85000, 75000, 65000, 55000, 40000, 20000, 10000, 0];
    uint256[] internal SKIN_ITEMS = [75000, 50000, 25000, 0];
    uint256[] internal NOSE_ITEMS = [85000, 60000, 45000, 30000, 15000, 5000, 0];
    uint256[] internal MARK_ITEMS = [
        95000,
        90000,
        85000,
        80000,
        75000,
        70000,
        65000,
        60000,
        55000,
        50000,
        45000,
        40000,
        35000,
        30000,
        25000,
        20000,
        15000,
        10000,
        5000,
        2000,
        1000,
        0
    ];
    uint256[] internal EYEBROW_ITEMS = [
        95000,
        90000,
        85000,
        80000,
        75000,
        70000,
        65000,
        60000,
        55000,
        50000,
        45000,
        40000,
        35000,
        30000,
        25000,
        20000,
        15000,
        10000,
        5000,
        2000,
        0
    ];
    uint256[] internal MASK_ITEMS = [
        95000,
        90000,
        85000,
        80000,
        75000,
        70000,
        65000,
        60000,
        55000,
        50000,
        45000,
        40000,
        35000,
        30000,
        25000,
        20000,
        15000,
        10000,
        5000,
        0
    ];
    uint256[] internal EARRINGS_ITEMS = [
        85000,
        70000,
        60000,
        40000,
        45000,
        35000,
        30000,
        20000,
        15000,
        10000,
        5000,
        2000,
        1000,
        0
    ];
    uint256[] internal ACCESSORY_ITEMS = [
        90000,
        85000,
        70000,
        60000,
        40000,
        45000,
        35000,
        30000,
        20000,
        15000,
        10000,
        5000,
        2000,
        1000,
        0
    ];
    uint256[] internal MOUTH_ITEMS = [
        95000,
        90000,
        85000,
        80000,
        75000,
        70000,
        65000,
        60000,
        55000,
        50000,
        45000,
        40000,
        35000,
        30000,
        25000,
        20000,
        15000,
        0
    ];
    uint256[] internal HAIR_ITEMS = [
        95000,
        90000,
        85000,
        80000,
        75000,
        70000,
        65000,
        60000,
        55000,
        50000,
        45000,
        40000,
        35000,
        30000,
        25000,
        20000,
        0
    ];
    uint256[] internal EYE_ITEMS = [
        95000,
        90000,
        85000,
        80000,
        75000,
        70000,
        65000,
        60000,
        55000,
        50000,
        45000,
        40000,
        35000,
        30000,
        25000,
        20000,
        15000,
        10000,
        6000,
        5000,
        2000,
        1000,
        0
    ];

    /// @inheritdoc IYokaiChainDescriptor
    function tokenURI(IYokaiChain yokaiChain, uint256 tokenId) external view override returns (string memory) {
        NFTDescriptor.SVGParams memory params = getSVGParams(yokaiChain, tokenId);
        params.background = getBackgroundId(params);
        string memory image = Base64.encode(bytes(NFTDescriptor.generateSVGImage(params)));
        string memory name = NFTDescriptor.generateName(params, tokenId);
        string memory description = NFTDescriptor.generateDescription(params);
        string memory attributes = NFTDescriptor.generateAttributes(params);

        return
            string(
                abi.encodePacked(
                    "data:application/json;base64,",
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                '{"name":"',
                                name,
                                '", "description":"',
                                description,
                                '", "attributes":',
                                attributes,
                                ', "image": "',
                                "data:image/svg+xml;base64,",
                                image,
                                '"}'
                            )
                        )
                    )
                )
            );
    }

    /// @inheritdoc IYokaiChainDescriptor
    function generateHairId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, HAIR_ITEMS, this.generateHairId.selector, tokenId);
    }

    /// @inheritdoc IYokaiChainDescriptor
    function generateEyeId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, EYE_ITEMS, this.generateEyeId.selector, tokenId);
    }

    /// @inheritdoc IYokaiChainDescriptor
    function generateEyebrowId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, EYEBROW_ITEMS, this.generateEyebrowId.selector, tokenId);
    }

    /// @inheritdoc IYokaiChainDescriptor
    function generateNoseId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, NOSE_ITEMS, this.generateNoseId.selector, tokenId);
    }

    /// @inheritdoc IYokaiChainDescriptor
    function generateMouthId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, MOUTH_ITEMS, this.generateMouthId.selector, tokenId);
    }

    /// @inheritdoc IYokaiChainDescriptor
    function generateMarkId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, MARK_ITEMS, this.generateMarkId.selector, tokenId);
    }

    /// @inheritdoc IYokaiChainDescriptor
    function generateEarringsId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, EARRINGS_ITEMS, this.generateEarringsId.selector, tokenId);
    }

    /// @inheritdoc IYokaiChainDescriptor
    function generateAccessoryId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, ACCESSORY_ITEMS, this.generateAccessoryId.selector, tokenId);
    }

    /// @inheritdoc IYokaiChainDescriptor
    function generateMaskId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, MASK_ITEMS, this.generateMaskId.selector, tokenId);
    }

    /// @inheritdoc IYokaiChainDescriptor
    function generateSkinId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, SKIN_ITEMS, this.generateSkinId.selector, tokenId);
    }

    /// @dev Get SVGParams from YokaiChain.Detail
    function getSVGParams(IYokaiChain yokaiChain, uint256 tokenId)
        private
        view
        returns (NFTDescriptor.SVGParams memory)
    {
        IYokaiChain.Detail memory detail = yokaiChain.details(tokenId);
        return
            NFTDescriptor.SVGParams({
                hair: detail.hair,
                eye: detail.eye,
                eyebrow: detail.eyebrow,
                nose: detail.nose,
                mouth: detail.mouth,
                mark: detail.mark,
                earring: detail.earrings,
                accessory: detail.accessory,
                mask: detail.mask,
                skin: detail.skin,
                background: 0,
                timestamp: detail.timestamp,
                creator: detail.creator
            });
    }

    function getBackgroundId(NFTDescriptor.SVGParams memory params) private view returns (uint8) {
        uint256 score = itemScorePosition(params.hair, HAIR_ITEMS) +
            itemScoreProba(params.accessory, ACCESSORY_ITEMS) +
            itemScoreProba(params.earring, EARRINGS_ITEMS) +
            itemScoreProba(params.mask, MASK_ITEMS) +
            itemScorePosition(params.mouth, MOUTH_ITEMS) +
            (itemScoreProba(params.skin, SKIN_ITEMS) / 2) +
            itemScoreProba(params.skin, SKIN_ITEMS) +
            itemScoreProba(params.nose, NOSE_ITEMS) +
            itemScoreProba(params.mark, MARK_ITEMS) +
            itemScorePosition(params.eye, EYE_ITEMS) +
            itemScoreProba(params.eyebrow, EYEBROW_ITEMS);
        return DetailHelper.pickItems(score, BACKGROUND_ITEMS);
    }

    /// @dev Get item score based on his probability
    function itemScoreProba(uint8 item, uint256[] memory ITEMS) private pure returns (uint256) {
        uint256 raw = ((item == 1 ? MAX : ITEMS[item - 2]) - ITEMS[item - 1]);
        return ((raw >= 1000) ? raw * 6 : raw) / 1000;
    }

    /// @dev Get item score based on his index
    function itemScorePosition(uint8 item, uint256[] memory ITEMS) private pure returns (uint256) {
        uint256 raw = ITEMS[item - 1];
        return ((raw >= 1000) ? raw * 6 : raw) / 1000;
    }
}
