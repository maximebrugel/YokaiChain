// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";
import "./constants/Colors.sol";

/// @title Masks SVG generator
library MaskDetail {
    /// @dev Mask N°1 => ?
    function item_1() public pure returns (string memory) {
        return "";
    }

    /// @notice Return the mask name of the given id
    /// @param id The mask Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "item 1";
        }
    }

    /// @dev The base SVG for the eyes
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Mask">', children, "</g>"));
    }
}
