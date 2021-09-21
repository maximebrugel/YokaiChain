// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";

/// @title Background SVG generator
library BackgroundDetail {
    /// @dev background N°1 => Ordinary
    function item_1() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<radialGradient id="background" cx="211.7163" cy="4015.5737" r="210.042" gradientTransform="matrix(0.9998 0 0 0.9998 -1.274 -3805.2708)" gradientUnits="userSpaceOnUse">',
                        '<stop offset="0" style="stop-color:#917D87"/>',
                        '<stop offset="0.028" style="stop-color:#8C7983"/>',
                        '<stop offset="0.344" style="stop-color:#5D525F"/>',
                        '<stop offset="0.622" style="stop-color:#3A3544"/>',
                        '<stop offset="0.850" style="stop-color:#252334"/>',
                        '<stop offset="1" style="stop-color:#1D1D2E"/>',
                        "</radialGradient>"
                    )
                )
            );
    }

    /// @dev background N°2 => Unusual
    function item_2() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<radialGradient id="background" cx="211.3162" cy="4015.6736" r="210.042" gradientTransform="matrix(0.9998 0 0 0.9998 -1.274 -3805.2708)" gradientUnits="userSpaceOnUse">',
                        '<stop offset="0" style="stop-color:#00C765"/>',
                        '<stop offset="0.2542" style="stop-color:#0A8D52"/>',
                        '<stop offset="0.4977" style="stop-color:#125D43"/>',
                        '<stop offset="0.711" style="stop-color:#183A37"/>',
                        '<stop offset="0.8856" style="stop-color:#1C2530"/>',
                        '<stop offset="1" style="stop-color:#1D1D2E"/>',
                        "</radialGradient>"
                    )
                )
            );
    }

    /// @dev background N°3 => Surprising
    function item_3() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<radialGradient id="background" cx="211.3162" cy="4015.6736" r="210.042" gradientTransform="matrix(0.9998 0 0 0.9998 -1.274 -3805.2708)" gradientUnits="userSpaceOnUse">',
                        '<stop offset="0" style="stop-color:#3BAFC4"/>',
                        '<stop offset="0.1886" style="stop-color:#33899D"/>',
                        '<stop offset="0.4518" style="stop-color:#2A5B6E"/>',
                        '<stop offset="0.6845" style="stop-color:#23394B"/>',
                        '<stop offset="0.8752" style="stop-color:#1F2436"/>',
                        '<stop offset="1" style="stop-color:#1D1D2E"/>',
                        "</radialGradient>"
                    )
                )
            );
    }

    /// @dev background N°4 => Impressive
    function item_4() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<radialGradient id="background" cx="211.3162" cy="4015.6736" r="210.042" gradientTransform="matrix(0.9998 0 0 0.9998 -1.274 -3805.2708)" gradientUnits="userSpaceOnUse">',
                        '<stop offset="0" style="stop-color:#D20AFF"/>',
                        '<stop offset="0.1242" style="stop-color:#B30DDB"/>',
                        '<stop offset="0.3543" style="stop-color:#7E139E"/>',
                        '<stop offset="0.5652" style="stop-color:#54176E"/>',
                        '<stop offset="0.7498" style="stop-color:#361A4B"/>',
                        '<stop offset="0.901" style="stop-color:#241C36"/>',
                        '<stop offset="1" style="stop-color:#1D1D2E"/>',
                        "</radialGradient>"
                    )
                )
            );
    }

    /// @dev background N°5 => Bloody
    function item_5() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<radialGradient id="background" cx="211.3162" cy="4015.6736" r="210.042" gradientTransform="matrix(0.9998 0 0 0.9998 -1.274 -3805.2708)" gradientUnits="userSpaceOnUse">',
                        '<stop offset="0" style="stop-color:#FF2865"/>',
                        '<stop offset="0.1708" style="stop-color:#CA2558"/>',
                        '<stop offset="0.3885" style="stop-color:#8D2249"/>',
                        '<stop offset="0.5882" style="stop-color:#5D203E"/>',
                        '<stop offset="0.763" style="stop-color:#3A1E35"/>',
                        '<stop offset="0.9063" style="stop-color:#251D30"/>',
                        '<stop offset="1" style="stop-color:#1D1D2E"/>',
                        "</radialGradient>"
                    )
                )
            );
    }

    /// @dev background N°6 => Phenomenal
    function item_6() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<radialGradient id="background" cx="211.3162" cy="4015.6736" r="210.042" gradientTransform="matrix(0.9998 0 0 0.9998 -1.274 -3805.2708)" gradientUnits="userSpaceOnUse">',
                        '<stop offset="0" style="stop-color:#FFC640"/>',
                        '<stop offset="0.1708" style="stop-color:#CA9E3C"/>',
                        '<stop offset="0.3885" style="stop-color:#8D7137"/>',
                        '<stop offset="0.5882" style="stop-color:#5D4D33"/>',
                        '<stop offset="0.763" style="stop-color:#3A3330"/>',
                        '<stop offset="0.9063" style="stop-color:#25232F"/>',
                        '<stop offset="1" style="stop-color:#1D1D2E"/>',
                        "</radialGradient>"
                    )
                )
            );
    }

    /// @dev background N°7 => Unreal
    function item_7() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<radialGradient id="background" cx="213.7361" cy="-3247.4888" r="210.059" gradientTransform="matrix(0.9994 0 0 -0.9998 -3.5579 -3037.3394)" gradientUnits="userSpaceOnUse">',
                        '<stop offset="6.926127e-07" style="stop-color:#CCCC75"/>',
                        '<stop offset="0.66" style="stop-color:#54054D"/>',
                        '<stop offset="1" style="stop-color:#001E2E"/>',
                        "</radialGradient>"
                    )
                )
            );
    }

    /// @dev background N°8 => Divine
    function item_8() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<radialGradient id="background" >',
                        '<stop offset="0" style="stop-color:#DE4A00"/>',
                        '<stop offset="0.0773" style="stop-color:#E0550C"/>',
                        '<stop offset="0.2159" style="stop-color:#E5732B"/>',
                        '<stop offset="0.3995" style="stop-color:#EDA25D"/>',
                        '<stop offset="0.6191" style="stop-color:#F8E4A1"/>',
                        '<stop offset="0.66" style="stop-color:#FAF1AF"/>',
                        '<stop offset="0.6778" style="stop-color:#D9D19B"/>',
                        abi.encodePacked(
                            '<stop offset="0.7046" style="stop-color:#ADA782"/>',
                            '<stop offset="0.7334" style="stop-color:#86826B"/>',
                            '<stop offset="0.7639" style="stop-color:#656358"/>',
                            '<stop offset="0.7966" style="stop-color:#4B4949"/>',
                            '<stop offset="0.8323" style="stop-color:#36353D"/>',
                            '<stop offset="0.8725" style="stop-color:#282834"/>',
                            '<stop offset="0.921" style="stop-color:#201F2F"/>',
                            '<stop offset="1" style="stop-color:#1D1D2E"/>',
                            "</radialGradient>"
                        )
                    )
                )
            );
    }

    /// @notice Return the background name of the given id
    /// @param id The background Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Ordinary";
        } else if (id == 2) {
            name = "Unusual";
        } else if (id == 3) {
            name = "Surprising";
        } else if (id == 4) {
            name = "Impressive";
        } else if (id == 5) {
            name = "Bloody";
        } else if (id == 6) {
            name = "Phenomenal";
        } else if (id == 7) {
            name = "Unreal";
        } else if (id == 8) {
            name = "Divine";
        }
    }

    /// @dev The base SVG for the background
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Background">', children, getPath(), "</g>"));
    }

    /// @dev Get the background path (end)
    function getPath() private pure returns (string memory) {
        return
            '<path fill="url(#background)" d="M390.4,419.5h-360c-16.6,0-30-13.4-30-30v-360c0-16.6,13.4-30,30-30h360c16.6,0,30,13.4,30,30v360 C420.4,406.1,407,419.5,390.4,419.5z"/>';
    }
}
