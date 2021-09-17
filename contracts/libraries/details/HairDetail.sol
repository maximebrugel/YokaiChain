// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";
import "./constants/Colors.sol";

/// @title Hair SVG generator
library HairDetail {
    /// @dev Hair N°1 => ?
    function item_1() public pure returns (string memory) {
        return "";
    }

    /// @notice Return the hair cut name of the given id
    /// @param id The hair Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "item 1";
        }
    }

    /// @dev The base SVG for the hair
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Hair">', children, "</g>"));
    }
}
