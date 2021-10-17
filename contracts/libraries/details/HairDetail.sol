// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";

/// @title Hair SVG generator
library HairDetail {
    /// @dev Hair N°1 => Tattoo kin
    function item_1() public pure returns (string memory) {
        return
            base(
                '<g id="Flame" display="inline" ><linearGradient id="SVGID_00000011722690206770933430000008680616382255612556_" gradientUnits="userSpaceOnUse" x1="210.6601" y1="-54.3" x2="210.6601" y2="11.1777" gradientTransform="matrix(1 0 0 -1 0 76)"><stop offset="0" style="stop-color:#FFB451" /><stop offset="0.4231" style="stop-color:#F7E394" /><stop offset="1" style="stop-color:#FF9B43" /></linearGradient><path fill-rule="evenodd" clip-rule="evenodd" fill="url(#SVGID_00000011722690206770933430000008680616382255612556_)" d="M192.1,67.4c-6.5,21.1,2,49.3,5.5,62.9c0,0,6.9-39.2,34-63.9C220.8,63.6,198.1,64.9,192.1,67.4z" /></g>'
            );
    }

    /// @dev Hair N°2 => White Long Hair
    function item_2() public pure returns (string memory) {
        return base(longHair("FFEDED"));
    }

    /// @dev Hair N°3 => Long Hair
    function item_3() public pure returns (string memory) {
        return base(longHair("33333D"));
    }

    /// @dev Hair N°4 => Blood Long Hair
    function item_4() public pure returns (string memory) {
        return base(longHair("B50D5E"));
    }

    /// @dev Hair N°5 => Spike White
    function item_5() public pure returns (string memory) {
        return base(spike("FFEDED"));
    }

    /// @dev Hair N°6 => Spike Red x2F Black x2F White
    function item_6() public pure returns (string memory) {
        return base(spike("000000"));
    }

    /// @dev Hair N°7 => Spike Red
    function item_7() public pure returns (string memory) {
        return base(spike("B50D5E"));
    }

    /// @dev Hair N°8 => Flame White
    function item_8() public pure returns (string memory) {
        return base(flame("FFDAEA"));
    }

    /// @dev Hair N°9 => Flame Black
    function item_9() public pure returns (string memory) {
        return base(flame("2A2C38"));
    }

    /// @dev Hair N°10 => Flame Red
    function item_10() public pure returns (string memory) {
        return base(flame("E31466"));
    }

    /// @dev Hair N°11 => Short White
    function item_11() public pure returns (string memory) {
        return base(shortHair("FFEDED"));
    }

    /// @dev Hair N°12 => Short Black
    function item_12() public pure returns (string memory) {
        return base(shortHair("001015"));
    }

    /// @dev Hair N°13 => Short Red
    function item_13() public pure returns (string memory) {
        return base(shortHair("B50D5E"));
    }

    /// @dev Hair N°14 => Tattoo White
    function item_14() public pure returns (string memory) {
        return base(tattoo("FFEDED"));
    }

    /// @dev Hair N°15 => Tattoo Black
    function item_15() public pure returns (string memory) {
        return base(tattoo("000000"));
    }

    /// @dev Hair N°16 => Tattoo Red
    function item_16() public pure returns (string memory) {
        return base(tattoo("B50D5E"));
    }

    /// @dev Hair N°17 => No Hair
    function item_17() public pure returns (string memory) {
        return base("");
    }

    function flame(string memory color) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<path  display="inline" fill="#',
                    color,
                    '" d="M291.9,168.3c-2.7,2.1-7.7,6-10.4,8.1c3.5-8,7-18.9,7.2-24c-2.4,1.6-6.8,4.7-9.3,4.1c3.9-12.3,4.2-11.6,4.6-24.2c-2.5,2-8.9,9.3-11.5,11.2c0.5-5.9,0.8-14.3,1.4-20.1c-3.3,3.4-7.6,2.6-12.5,4c-0.5-5,1.3-7,3.5-11.6c-9.8,4-24.7,6-34.9,8.6c-0.1-2.4-0.6-6.3,0.7-8.1c-10.4,5-26.7,9.3-31.8,12.4c-4.1-2.8-16.9-9.3-19.7-12.9c-0.1,1.6,0.7,8,0.6,9.6c-5.4-3.8-10.2-5.9-16-9.7c0.5,2.6,4.3,6.5,4.8,9.1c-7.2-2.8-14.4-5.7-21.6-8.5c1.8,4,3.5,8,5.3,12c-3.6,0.6-9.9-1.8-12-4.9c-3,7.8-0.1,12.2,0,20.5c-2-2-3.9-6.4-5.4-8.6c0.5,9.6,1,19.1,1.6,28.7c-1.6-0.6-2.7-2-3.1-3.5c-0.1,5.8,2.6,20.6,4,26.4c-0.8-0.8-5.5-10.9-5.7-12.1c4.3,7.9,4.1,10.5,5.4,26.3c0.9-0.9-5.5-17-8-19.4c-1.7-15.4-5.3-33.7-9.1-48.8c2,3.6,3.9,7.3,5.8,11c-0.7-13.8-0.7-27.6-0.1-41.4c-0.2,5.9,0.7,11.9,2.6,17.4c0.5-11.3,2.2-22.4,5.2-33.3c-0.1,4.1,0.4,8.1,1.6,12c2.8-10,6.3-19.8,10.3-29.3c0.8,4.7,1.7,9.4,2.4,14.1c3.6-9.9,7.9-15.5,14.6-23.7c0.2,4,0.4,7.8,0.7,11.8c6.9-8.9,15-16.8,24.1-23.2c-0.5,4.4-1,8.8-1.6,13.1c6.1-5.7,11.7-9.7,17.8-15.4c0.3,4.4,1.3,7,1.6,11.5c4-5.4,8.1-9.6,12.1-15c1.4,6.1,2,11.3,2.2,17.6c4.8-4.7,8.1-10,8.4-16.7c4.2,7.4,7.9,10.6,9.8,18.9c2.5-8.4,4.8-11,4.7-19.8c4.4,10.1,6.8,14.3,9.6,24c0.9-4.6,4.1-11.5,5-16c6.3,6.7,9.1,14.6,12.4,23c0.7-7.6,5.7-10.6,3.5-17.9c6.5,10.7,4.6,15.2,8.6,27.7c2.9-5.3,4.4-13.3,5.5-19.4c2.7,8,7.7,23.1,9.4,31.5c0.7-2.7,3.1-3.3,3.5-9.9c2.8,7.7,3.3,8.4,3.5,23.4c1.1-7.4,4.3-3.3,4.5-10.8c3.8,9.6,1.4,14.8,0.4,22.6c-0.1,0.9,4.2-0.4,5.1-1.5c1-1.3-2.1,12.4-2.8,14.3c-0.5,1.4-1.9,2.7-1.4,8.4c2.2-3.1,2.5-3,4.3-6.4c1.3,11.3-2.3,6-4.7,25.5c1.9-2.5,3.9-1.1,5.6-3.5c-2.8,7.8-0.4,9.8-6.9,14c-3.3,2.1-11.2,10.3-14.2,13.5c1.6-3.3-2.9,9.8-8.2,18.8C284.2,199,289.4,170.2,291.9,168.3z"/>'
                )
            );
    }

    function tattoo(string memory color) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<g  display="inline"><path fill-rule="evenodd" fill="#',
                    color,
                    '" clip-rule="evenodd" d="M192.1,67.6c-6.5,21.1,2,49.1,5.5,62.7c0,0,7-39.2,34.1-63.9C220.9,63.6,198.1,64.5,192.1,67.6z"/></g>'
                )
            );
    }

    function longHair(string memory color) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<g ><polygon fill="#',
                    color,
                    '" points="188.1,115.5 198.2,119 211.1,115.2 197.7,104.1 "/><polygon opacity="0.5" enable-background="new    " points="188.3,115.6 198.2,119 211.6,115.1 197.6,104.5 "/><path fill="#',
                    color,
                    '" stroke="#000000" stroke-width="2" stroke-miterlimit="10" d="M273.7,200.6c4.2-5.9,10.1-12.8,10.5-18.3c1.1,3.2,2,11.7,1.5,15.8c0,0,5.7-10.8,10.6-15.6c6.4-6.3,13.9-10.2,17.2-14.4c2.3,6.4,1.4,15.3-4.7,28.1c0,0,0.4,9.2-0.7,15.3c3.3-5.9,12.8-36.2,8.5-61.6c0,0,3.7,9.3,4.4,16.9s3.1-32.8-7.7-51.4c0,0,6.9,3.9,10.8,4.8c0,0-12.6-12.5-13.6-15.9c0,0-14.1-25.7-39.1-34.6c0,0,9.3-3.2,15.6,0.2c-0.1-0.1-15.1-12.2-34.2-7.1c0,0-15.1-13.6-42.6-12.3l15.6,8.8c0,0-12.9-0.9-28.4-1.3c-6.1-0.2-21.8,3.3-38.3-1.4c0,0,7.3,7.2,9.4,7.7c0,0-30.6,13.8-47.3,34.2c0,0,10.7-8.9,16.7-10.9c0,0-26,25.2-31.5,70c0,0,9.2-28.6,15.5-34.2c0,0-10.7,27.4-5.3,48.2c0,0,2.4-14.5,4.9-19.2c-1,14.1,2.4,33.9,13.8,47.8c0,0-3.3-15.8-2.2-21.9l8.8-17.9c0.1,4.1,1.3,8.1,3.1,12.3c0,0,13-36.1,19.7-43.9c0,0-2.9,15.4-1.1,29.6c0,0,7.2-26.8,17.3-40.1c0,0,0.8,0.1,17.6-7.6c6.3,3.1,8,1.4,17.9,7.7c4.1,5.3,13.8,31.9,15.6,41.5c3.4-7.3,5.6-19,5.2-29.5c2.7,3.7,8.9,19.9,9.6,34.3c4.3-6,6.4-27.8,5.9-29c0,1.2,0.2,14.8,0.3,14.3c0,0,12.1,19.9,14.9,19.7c0-0.8-1.7-12.9-1.7-12.8c1.3,5.8,2.8,23.3,3.1,27.1l5-9.5C274.6,176.2,275.4,194.5,273.7,200.6z"/><g><path fill="none" stroke="#000000" stroke-width="0.5" stroke-miterlimit="10" d="M295.2,182.2"/><path fill="none" stroke="#000000" stroke-width="0.5" stroke-miterlimit="10" d="M286.6,200.9"/><path fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10" d="M133.1,181.3c0,0-1.3-11.3,0.3-16.9"/><path fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10" d="M142.1,160.9c0,0-1-6.5,1.6-20.4"/></g></g><g  id="Shadow"><path opacity="0.2" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " d="M180.5,119.1c0,0-15.9,23.7-16.9,25.6s0,12.4,0.3,12.8S165.7,142.5,180.5,119.1z"/><path opacity="0.2" enable-background="new    " d="M164.5,128.9c0,0-16.3,25.3-17.9,26.3c0,0-3.8-12.8-3-14.7s-9.6,10.3-9.9,17c0,0-8.4-0.6-11-7.4c-1-2.5,1.4-9.1,2.1-12.2c0,0-6.5,7.9-9.4,22.5c0,0,0.6,8.8,1.1,10c0,0,3.5-14.8,4.9-17.7c0,0-0.3,33.3,13.6,46.7c0,0-3.7-18.6-2.6-21l9.4-18.6c0,0,2.1,10.5,3.1,12.3l13.9-33.1L164.5,128.9z"/><path opacity="0.16" enable-background="new    " d="M253.2,146.8c0.8,4.4,8.1,12.1,13.1,11.7l1.6,11c0,0-5.2-3.9-14.7-19.9V146.8z"/><path opacity="0.16" enable-background="new    " d="M237.5,130.3c0,0,4.4,3,13.9,21.7c0,0-4.3,12-4.6,12.4C246.5,164.8,248.4,153.7,237.5,130.3z"/><path opacity="0.17" enable-background="new    " d="M220.9,127.6c0,0,5.2,4,14.4,23c0,0-1.2,4.6-3.1,8.9C227.6,143.3,227,140.8,220.9,127.6z"/><path opacity="0.2" enable-background="new    " d="M272,143.7c-2.4,8.1-3.6,13.8-4.9,17.9c0,0,1.3,12.8,2.1,22.2c4.7-8.4,4.7-8.4,5.4-9c0.2,0.6,3.1,11.9-1.2,26.6c5.1-6.7,10.4-14.9,11-21.3c1.1,3.7,1.7,15,1.2,19.1c0,0,7.1-7.4,12.3-11.3c0,0,8.7-3.5,12.5-7.2c0,0,2.2,1.4-1.2,11.6l3.7-8c0,0-2.7,19.9-3.4,22.5c0,0,9.8-33.3,7.2-58c0,0,4.7,8.3,4.9,17.1c0.1,8.8,1.7-8.6,0.2-17.8c0,0-6.5-13.9-8.2-15.4c0,0,1.3,10.1,0.4,13.6c0,0-7.3-10.3-10.5-12.5c0,0,1.1,30.2-1.7,35.3c0,0-6.1-17-10.7-20.8c0,0-2.4,20.9-5.6,28.1C283.6,174.1,280.4,157.8,272,143.7z"/><path opacity="0.14" enable-background="new    " d="M198.1,106.1c-0.9-3.9,3.2-35.1,34.7-36C227.5,69.4,198.8,90.7,198.1,106.1z"/></g><g  id="Light" opacity="0.64"><path fill="#FFFFFF" d="M126.4,116.8c0,0,9.5-20.6,23.5-27.7"/><path fill="#FFFFFF" d="M297.1,112.5c0,0-9.5-20.6-23.5-27.7"/><path fill="#FFFFFF" d="M239.8,101.5c0,0,14.1,17.8,15.4,21.3c1.3,3.5,2.7-6-14.4-21.5"/><path fill="#FFFFFF" d="M160.7,101.9c0,0-13.1,18.5-14.2,22.1c-1.1,3.6-3-5.9,13.3-22.2"/><path fill="#FFFFFF" d="M256,92.4c0,0,21.1,25.4,22,27.4s-4.9-23.8-12.9-29.5c0,0,9.5,20.7,9.9,21.9C275.3,113.4,262.1,94.5,256,92.4z"/><path fill="#FFFFFF" d="M229.9,129.4c0,0-12.9-24.9-14.1-26.4c-1.2-1.4,18.2,11.9,19.3,20.2c0,0-11.9-13-12.7-13.7C221.7,108.8,230.8,123.9,229.9,129.4z"/><path fill="#FFFFFF" d="M170,126.1c0,0,7.5-21.3,8.4-22.5c0.9-1.2-12.6,11.4-13.1,18c0,0,9-12.8,9.5-13.5C175.4,107.5,168.8,121.8,170,126.1z"/></g>'
                )
            );
    }

    function spike(string memory color) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<path  display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#',
                    color,
                    '" stroke="#',
                    color,
                    '" stroke-miterlimit="10" d="M197.7,120.1c0,0-26.4-38.7-18-80.2c0,0,0.6,18.5,10.4,25.8c0,0-7.5-13.9-0.3-34.5c0,0,2.3,16.4,9.3,24.1c0,0-2.3-19.1,1.9-30.5c0,0,8.4,23.9,12.1,27.1c0,0-2.8-16.2,4.8-28.6c0,0,2.2,17.1,8.5,26.2c0,0-2.3-11.5,3.4-19.6c0,0,1,25.8,5.7,30.3c0,0-2.3-12.4,1.8-20.7c0,0,3.6,24.4,5.9,29c-7.9-2.6-14.6-2.1-22.2-1.9C221.3,67,199.4,74.8,197.7,120.1z"/>'
                )
            );
    }

    function shortHair(string memory color) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<path display="inline" fill="#',
                    color,
                    '" d="M288.2,192.7c0,0,0.1-18.3-2.9-21.5c-3.1-3-7.4-9.2-7.4-9.2s0.3-22.2-3.2-29.6c-3.6-7.4-4.6-19.5-36.1-18.7c-30.7,0.7-41.1,5.8-41.1,5.8s-13.1-7.7-41.9-4c-19.6,5.2-20.3,42.6-20.3,42.6s-1.3,9.2-1.9,14.7c-0.6,5.6-0.3,8.5-0.3,8.5c-0.9,11.8-27.4-116.1,81.3-119.6c110.4,6.8,89.8,101.8,86.7,115.3C295.8,180.8,294.7,183.1,288.2,192.7z"  />',
                    '<g id="Shadow" display="inline" > <path opacity="7.000000e-02" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " d="M277,141.5c0,0,0.9,3.6,0.9,20.6c0,0,6.6,7.9,8.6,11.7c2,3.6,2.6,18.8,2.6,18.8l5.4-9.2c0,0,1.5-1.8,5.7-4c0,0,7-15.6,3.4-46.3C303.7,133.1,295.1,139.9,277,141.5z" /> <path opacity="7.000000e-02" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " d="M132.9,182.7c0,0,0.4-11.3,2.3-24.4c0,0,1.9-15.1,3.4-21.9c-1.9,0-6.9,0-8.5-1.1C130,135.3,128.7,177.5,132.9,182.7z" /> </g>'
                )
            );
    }

    /// @notice Return the skin name of the given id
    /// @param id The skin Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Tatoo Kin";
        } else if (id == 2) {
            name = "White Long Hair";
        } else if (id == 3) {
            name = "Long Hair";
        } else if (id == 4) {
            name = "Blood Long Hair";
        } else if (id == 5) {
            name = "Spike White";
        } else if (id == 6) {
            name = "Spike Black";
        } else if (id == 7) {
            name = "Spike Red";
        } else if (id == 8) {
            name = "Flame White";
        } else if (id == 9) {
            name = "Flame Black";
        } else if (id == 10) {
            name = "Flame Red";
        } else if (id == 11) {
            name = "Short White";
        } else if (id == 12) {
            name = "Short Black";
        } else if (id == 13) {
            name = "Short Red";
        } else if (id == 14) {
            name = "Tattoo White";
        } else if (id == 15) {
            name = "Tattoo Black";
        } else if (id == 16) {
            name = "Tattoo Red";
        } else if (id == 17) {
            name = "No Hair";
        }
    }

    /// @dev The base SVG for the body
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="hair">', children, "</g>"));
    }
}