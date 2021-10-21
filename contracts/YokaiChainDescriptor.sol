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

    uint256[] internal BACKGROUND_ITEMS = [3000, 2650, 2400, 2200, 2000, 1700, 1300, 0];
    uint256[] internal SKIN_ITEMS = [52450, 26450, 100, 0];
    uint256[] internal NOSE_ITEMS = [75000, 55000, 39000, 26000, 15000, 5000, 100, 0];
    uint256[] internal MARK_ITEMS = [
        94000,
        88000,
        82000,
        76000,
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
        21000,
        17000,
        13000,
        9500,
        6000,
        2500,
        100,
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
        100,
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
        100,
        0
    ];
    uint256[] internal ACCESSORY_ITEMS = [
        86000,
        77000,
        68000,
        59000,
        51000,
        43000,
        35000,
        28000,
        22000,
        17000,
        12000,
        7000,
        2000,
        300,
        100,
        0
    ];
    uint256[] internal MOUTH_ITEMS = [
        92000,
        84500,
        77500,
        71000,
        64500,
        58500,
        52500,
        46500,
        41000,
        35500,
        30000,
        25000,
        20000,
        15500,
        11000,
        7000,
        3000,
        0
    ];
    uint256[] internal HAIR_ITEMS = [
        90100,
        82100,
        74100,
        66100,
        59100,
        52100,
        45100,
        39100,
        33100,
        27100,
        22100,
        17100,
        12100,
        8100,
        4100,
        100,
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
        100,
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
            itemScorePosition(params.accessory, ACCESSORY_ITEMS) +
            itemScorePosition(params.earring, EARRINGS_ITEMS) +
            itemScorePosition(params.mask, MASK_ITEMS) +
            itemScorePosition(params.mouth, MOUTH_ITEMS) +
            (itemScoreProba(params.skin, SKIN_ITEMS) * 2) +
            itemScoreProba(params.nose, NOSE_ITEMS) +
            itemScorePosition(params.mark, MARK_ITEMS) +
            itemScorePosition(params.eye, EYE_ITEMS) +
            itemScorePosition(params.eyebrow, EYEBROW_ITEMS);
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
