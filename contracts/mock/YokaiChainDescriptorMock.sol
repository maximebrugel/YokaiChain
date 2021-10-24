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

    uint256[] internal BACKGROUND_ITEMS = [9900, 9100, 8500, 7800, 7300, 6500, 5750, 0];
    uint256[] internal SKIN_ITEMS = [63900, 30900, 200, 0];
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
        91500,
        83250,
        75500,
        68000,
        60750,
        53750,
        47000,
        41100,
        36800,
        32600,
        28500,
        24600,
        20800,
        17100,
        13600,
        10350,
        7350,
        4600,
        2100,
        200,
        0
    ];
    uint256[] internal MASK_ITEMS = [
        91000,
        82600,
        74400,
        66600,
        59000,
        51500,
        44250,
        37250,
        30500,
        24000,
        19500,
        15250,
        11500,
        8000,
        4700,
        2710,
        1710,
        810,
        10,
        0
    ];
    uint256[] internal EARRINGS_ITEMS = [
        90100,
        80600,
        71600,
        63200,
        54900,
        46700,
        38900,
        31400,
        24150,
        17400,
        10900,
        6900,
        3100,
        200,
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
        200,
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
