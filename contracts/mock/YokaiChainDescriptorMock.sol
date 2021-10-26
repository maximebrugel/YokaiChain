// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "../libraries/NFTDescriptor.sol";
import "../libraries/DetailHelper.sol";
import "base64-sol/base64.sol";
import "../interfaces/IYokaiChainDescriptor.sol";
import "../interfaces/IYokaiChain.sol";

/// @title Describes Yokai
/// @notice Produces a string containing the data URI for a JSON metadata string
contract YokaiChainDescriptorMock is IYokaiChainDescriptor {
    /// @dev Max value for defining probabilities
    uint256 internal constant MAX = 100000;

    uint256[] internal BACKGROUND_ITEMS = [9050, 8725, 8500, 8300, 8125, 7950, 7000, 0];
    uint256[] internal SKIN_ITEMS = [66000, 32700, 200, 0];
    uint256[] internal NOSE_ITEMS = [82000, 66000, 51000, 37000, 24000, 12000, 200, 0];
    uint256[] internal MARK_ITEMS = [
        91800,
        85700,
        79700,
        73800,
        68000,
        62600,
        57300,
        52100,
        47000,
        42000,
        37200,
        32600,
        28200,
        24000,
        20000,
        16100,
        12300,
        8700,
        5200,
        2500,
        200,
        0
    ];
    uint256[] internal EYEBROW_ITEMS = [
        92000,
        84000,
        76000,
        68000,
        61000,
        54000,
        47000,
        42100,
        38100,
        34100,
        30100,
        26100,
        22100,
        18100,
        15100,
        12100,
        9100,
        6100,
        3100,
        200,
        0
    ];
    uint256[] internal MASK_ITEMS = [
        91000,
        83000,
        75000,
        67000,
        59000,
        52000,
        45000,
        38000,
        31000,
        24000,
        20000,
        16000,
        12000,
        8000,
        5000,
        3010,
        2010,
        1010,
        10,
        0
    ];
    uint256[] internal EARRINGS_ITEMS = [
        90100,
        81600,
        73100,
        64600,
        56100,
        48100,
        40100,
        33100,
        26100,
        19100,
        12100,
        8100,
        4100,
        200,
        0
    ];
    uint256[] internal ACCESSORY_ITEMS = [
        88000,
        79500,
        71500,
        64000,
        56500,
        49500,
        42500,
        35750,
        29000,
        22500,
        16000,
        10000,
        4000,
        300,
        100,
        0
    ];
    uint256[] internal MOUTH_ITEMS = [
        92000,
        84400,
        77100,
        69900,
        62800,
        55900,
        49100,
        42400,
        35800,
        29300,
        22800,
        16500,
        10500,
        8000,
        5500,
        3500,
        1500,
        0
    ];
    uint256[] internal HAIR_ITEMS = [
        90350,
        82100,
        74100,
        66350,
        59100,
        52100,
        45350,
        39100,
        33100,
        27350,
        22100,
        17100,
        12350,
        8100,
        4100,
        200,
        0
    ];
    uint256[] internal EYE_ITEMS = [
        93000,
        86000,
        79000,
        73000,
        67000,
        61000,
        55000,
        49500,
        44500,
        39500,
        35000,
        30500,
        26500,
        22500,
        18500,
        15000,
        12000,
        9000,
        6000,
        3000,
        1000,
        200,
        0
    ];

    function getAccessoryItems() external view returns (uint256[] memory) {
        return ACCESSORY_ITEMS;
    }

    function getBodyItems() external view returns (uint256[] memory) {
        return SKIN_ITEMS;
    }

    function getNoseItems() external view returns (uint256[] memory) {
        return NOSE_ITEMS;
    }

    function getMarkItems() external view returns (uint256[] memory) {
        return MARK_ITEMS;
    }

    function getEyebrowItems() external view returns (uint256[] memory) {
        return EYEBROW_ITEMS;
    }

    function getMaskItems() external view returns (uint256[] memory) {
        return MASK_ITEMS;
    }

    function getEarringsItems() external view returns (uint256[] memory) {
        return EARRINGS_ITEMS;
    }

    function getMouthItems() external view returns (uint256[] memory) {
        return MOUTH_ITEMS;
    }

    function getHairItems() external view returns (uint256[] memory) {
        return HAIR_ITEMS;
    }

    function getEyeItems() external view returns (uint256[] memory) {
        return EYE_ITEMS;
    }

    function getBackgroundItems() external view returns (uint256[] memory) {
        return BACKGROUND_ITEMS;
    }

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
        public
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
        uint256 score = itemScoreProba(params.hair, HAIR_ITEMS) +
            itemScoreProba(params.accessory, ACCESSORY_ITEMS) +
            itemScoreProba(params.earring, EARRINGS_ITEMS) +
            itemScoreProba(params.mask, MASK_ITEMS) +
            itemScoreProba(params.mouth, MOUTH_ITEMS) +
            itemScoreProba(params.skin, SKIN_ITEMS) +
            itemScoreProba(params.nose, NOSE_ITEMS) +
            itemScoreProba(params.mark, MARK_ITEMS) +
            itemScoreProba(params.eye, EYE_ITEMS) +
            itemScoreProba(params.eyebrow, EYEBROW_ITEMS);
        return DetailHelper.pickItems(score, BACKGROUND_ITEMS);
    }

    function getScore(NFTDescriptor.SVGParams memory params) external view returns (uint256) {
        return
            itemScoreProba(params.hair, HAIR_ITEMS) +
            itemScoreProba(params.accessory, ACCESSORY_ITEMS) +
            itemScoreProba(params.earring, EARRINGS_ITEMS) +
            itemScoreProba(params.mask, MASK_ITEMS) +
            itemScoreProba(params.mouth, MOUTH_ITEMS) +
            itemScoreProba(params.skin, SKIN_ITEMS) +
            itemScoreProba(params.nose, NOSE_ITEMS) +
            itemScoreProba(params.mark, MARK_ITEMS) +
            itemScoreProba(params.eye, EYE_ITEMS) +
            itemScoreProba(params.eyebrow, EYEBROW_ITEMS);
    }

    /// @dev Get item score based on his probability
    function itemScoreProba(uint8 item, uint256[] memory ITEMS) public pure returns (uint256) {
        uint256 raw = ((item == 1 ? MAX : ITEMS[item - 2]) - ITEMS[item - 1]);
        return multiplicator(raw) / 100;
    }

    /// @dev Get item score based on his index
    function itemScorePosition(uint8 item, uint256[] memory ITEMS) public pure returns (uint256) {
        uint256 raw = ITEMS[item - 1];
        return multiplicator(raw) / 100;
    }

    /// @dev multiply score if rare
    function multiplicator(uint256 raw) private pure returns (uint256 result) {
        if (raw > 10000) {
            result = raw * 12;
        } else if (raw > 2000) {
            result = raw * 6;
        } else if (raw > 1000) {
            result = raw * 3;
        } else {
            result = raw;
        }
    }

    /// TEST
    function getBackgroundIdFromTokenId(IYokaiChain oniiChain, uint256 tokenId) external view returns (uint8) {
        NFTDescriptor.SVGParams memory params = getSVGParams(oniiChain, tokenId);
        return getBackgroundId(params);
    }
}
