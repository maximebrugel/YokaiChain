// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";

/// @title Earrings SVG generator
library EarringsDetail {
    /// @dev Earrings N°1 => Tomoe Drop Gold
    function item_1() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><ellipse cx="291.2" cy="231.8" rx="3.5" ry="3.5" /><line fill="none" stroke="#000000" stroke-miterlimit="10" x1="291.2" y1="231.8" x2="291.2" y2="259.8" /><linearGradient id="SVGID_00000120528397129779781120000012903837417257993114_" gradientUnits="userSpaceOnUse" x1="284.3" y1="-535.3656" x2="295.1259" y2="-535.3656" gradientTransform="matrix(1 0 0 -1 0 -270)"><stop offset="0" style="stop-color:#FFB451" /><stop offset="0.5259" style="stop-color:#F7EC94" /><stop offset="1" style="stop-color:#FF9121" /></linearGradient><path fill-rule="evenodd" clip-rule="evenodd" fill="url(#SVGID_00000120528397129779781120000012903837417257993114_)" d="M292.2,258.2c-2.5-1.2-5.5,0-6.7,2.5c-1.1,2.5,0,5.5,2.5,6.7c0.1,0.1,0.2,0.1,0.4,0.1c-0.9,3.2-4.1,5.5-4.1,5.5c6.6-1.9,9.1-5.6,10-7.4c0.1-0.2,0.3-0.4,0.4-0.7C295.8,262.4,294.7,259.4,292.2,258.2z M288.5,262.1c0.4-0.8,1.4-1.3,2.2-0.8c0.8,0.4,1.3,1.4,0.8,2.2c-0.4,0.8-1.4,1.3-2.2,0.8C288.5,264,288.1,262.9,288.5,262.1z" /></g><g display="inline" ><ellipse cx="139" cy="231.7" rx="2.6" ry="2.8" /><line fill="none" stroke="#000000" stroke-miterlimit="10" x1="138.5" y1="231.8" x2="138.5" y2="259.8" /><linearGradient id="SVGID_00000027574875614874123830000011265039474658243508_" gradientUnits="userSpaceOnUse" x1="132.3" y1="-536.087" x2="143.1259" y2="-536.087" gradientTransform="matrix(1 0 0 -1 0 -270)"><stop offset="0" style="stop-color:#FFB451" /><stop offset="0.5259" style="stop-color:#F7EC94" /><stop offset="1" style="stop-color:#FF9121" /></linearGradient><path fill-rule="evenodd" clip-rule="evenodd" fill="url(#SVGID_00000027574875614874123830000011265039474658243508_)" d="M140.2,258.9c-2.5-1.1-5.5,0-6.7,2.5c-1.1,2.5,0,5.5,2.5,6.7c0.1,0.1,0.2,0.1,0.4,0.1c-0.9,3.2-4.1,5.5-4.1,5.5c6.8-2,9.3-5.9,10.1-7.6c0.1-0.2,0.2-0.3,0.3-0.5C143.8,263.1,142.7,260.1,140.2,258.9z M136.5,262.8c0.4-0.8,1.4-1.3,2.2-0.8s1.3,1.4,0.8,2.2c-0.4,0.8-1.4,1.3-2.2,0.8C136.5,264.7,136,263.7,136.5,262.8z" /></g>'
            );
    }

    /// @dev Earrings N°2 => Tomoe Drop White
    function item_2() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><ellipse cx="291.2" cy="231.8" rx="3.5" ry="3.5" /><line fill="none" stroke="#000000" stroke-miterlimit="10" x1="291.2" y1="231.8" x2="291.2" y2="259.8" /><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M292.2,258.2c-2.5-1.2-5.5,0-6.7,2.5c-1.1,2.5,0,5.5,2.5,6.7c0.1,0.1,0.2,0.1,0.4,0.1c-0.9,3.2-4.1,5.5-4.1,5.5c6.6-1.9,9.1-5.6,10-7.4c0.1-0.2,0.3-0.4,0.4-0.7C295.8,262.4,294.7,259.4,292.2,258.2z M288.5,262.1c0.4-0.8,1.4-1.3,2.2-0.8c0.8,0.4,1.3,1.4,0.8,2.2c-0.4,0.8-1.4,1.3-2.2,0.8C288.5,264,288.1,262.9,288.5,262.1z" /></g><g display="inline" ><ellipse cx="139" cy="231.7" rx="2.6" ry="2.8" /><line fill="none" stroke="#000000" stroke-miterlimit="10" x1="138.5" y1="231.8" x2="138.5" y2="259.8" /><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M140.2,258.9c-2.5-1.1-5.5,0-6.7,2.5c-1.1,2.5,0,5.5,2.5,6.7c0.1,0.1,0.2,0.1,0.4,0.1c-0.9,3.2-4.1,5.5-4.1,5.5c6.8-2,9.3-5.9,10.1-7.6c0.1-0.2,0.2-0.3,0.3-0.5C143.8,263.1,142.7,260.1,140.2,258.9z M136.5,262.8c0.4-0.8,1.4-1.3,2.2-0.8s1.3,1.4,0.8,2.2c-0.4,0.8-1.4,1.3-2.2,0.8C136.5,264.7,136,263.7,136.5,262.8z" /></g>'
            );
    }

    /// @dev Earrings N°3 => Monk Ear White
    function item_3() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><g><ellipse transform="matrix(0.9952 -9.784740e-02 9.784740e-02 0.9952 -23.5819 29.5416)" fill="#FFEDED" stroke="#000000" stroke-width="1" stroke-miterlimit="10.0039" cx="289.4" cy="255.2" rx="8" ry="8.1" /><ellipse transform="matrix(1.784754e-02 -0.9998 0.9998 1.784754e-02 24.9032 543.924)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" fill="#33112E" enable-background="new    " cx="289.3" cy="259.3" rx="2.2" ry="4.9" /></g><path fill="#A5CBCC" stroke="#000000" stroke-miterlimit="10.0039" d="M283.4,250.2c3.9,0.5,8.2,0.4,12.1-0.1C295.7,250.1,289.6,243,283.4,250.2z" /><line fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10.0039" x1="289.9" y1="244.7" x2="289.6" y2="247.3" /></g><g display="inline" ><g><ellipse transform="matrix(0.9952 -9.784740e-02 9.784740e-02 0.9952 -24.1729 14.6915)" fill="#FFEDED" stroke="#000000" stroke-width="1" stroke-miterlimit="10.0039" cx="137.7" cy="253.8" rx="8" ry="8.1" /><ellipse transform="matrix(1.784754e-02 -0.9998 0.9998 1.784754e-02 -122.6851 390.7122)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" fill="#33112E" enable-background="new    " cx="137.5" cy="257.8" rx="2.2" ry="4.9" /></g><path fill="#A5CBCC" stroke="#000000" stroke-miterlimit="10.0039" d="M131.8,248.8c3.9,0.5,8.1,0.4,12-0.1C143.7,248.6,138,241.6,131.8,248.8z" /><line fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10.0039" x1="138" y1="243.2" x2="137.8" y2="245.8" /></g><g id="Ring_00000080165655606821295520000012954959166434490763_" display="inline" ><path fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M289,234.7c0,0-4.4,2.1-3.2,6.4c1,4.3,5.3,3.8,5.6,3.6s3.2-0.9,3.1-5.2" /><path fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M137,232.9c0,0-4.4,2.1-3.2,6.4c1,4.3,5.3,3.8,5.6,3.6c0.3-0.1,3.3-0.6,3.2-4.8" /></g>'
            );
    }

    /// @dev Earrings N°4 => Tomoe Ear White
    function item_4() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M289,234.7c0,0-4.4,2.1-3.2,6.4c1,4.3,5.3,3.8,5.6,3.6s3.2-0.9,3.1-5.2"  /><path display="inline" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M135.9,232.9c0,0-4.4,2.1-3.2,6.4c1,4.3,5.3,3.8,5.6,3.6c0.3-0.1,3.3-0.6,3.2-4.8"  /><g display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M294.7,250.1c0,0-2,5.6-11.3,7.4c0,0,3.4-2,4.6-5.2" /><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M294.6,250.4c1.5-2.4,0.6-5.5-1.8-6.9c-2.4-1.5-5.5-0.6-6.9,1.8c-1.5,2.4-0.6,5.5,1.8,6.9C290.1,253.5,293.2,252.8,294.6,250.4z M288.8,247c0.5-0.8,1.5-1,2.3-0.6c0.8,0.5,1,1.5,0.6,2.3c-0.5,0.8-1.5,1-2.3,0.6C288.5,248.9,288.4,247.8,288.8,247z" /></g><g display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M131.8,247.3c0,0,0.4,6,8.8,10.2c0,0-2.7-2.8-3-6.3" /><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M131.8,247.6c-0.7-2.7,0.9-5.4,3.6-6.1s5.4,0.9,6.1,3.6c0.7,2.7-0.9,5.4-3.6,6.1C135.2,252,132.6,250.3,131.8,247.6z M138.3,245.9c-0.2-0.9-1.1-1.5-2.1-1.3c-0.9,0.2-1.5,1.1-1.3,2.1c0.2,0.9,1.1,1.5,2.1,1.3C138,247.7,138.5,246.8,138.3,245.9z" /></g>'
            );
    }

    /// @dev Earrings N°5 => Tomoe Drop
    function item_5() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><ellipse cx="291.2" cy="231.8" rx="3.5" ry="3.5" /><line fill="none" stroke="#000000" stroke-miterlimit="10" x1="291.2" y1="231.8" x2="291.2" y2="259.8" /><path fill-rule="evenodd" clip-rule="evenodd" d="M292.2,258.2c-2.5-1.2-5.5,0-6.7,2.5c-1.1,2.5,0,5.5,2.5,6.7c0.1,0.1,0.2,0.1,0.4,0.1c-0.9,3.2-4.1,5.5-4.1,5.5c6.6-1.9,9.1-5.6,10-7.4c0.1-0.2,0.3-0.4,0.4-0.7C295.8,262.4,294.7,259.4,292.2,258.2z M288.5,262.1c0.4-0.8,1.4-1.3,2.2-0.8c0.8,0.4,1.3,1.4,0.8,2.2c-0.4,0.8-1.4,1.3-2.2,0.8C288.5,264,288.1,262.9,288.5,262.1z" /></g><g display="inline" ><ellipse cx="139" cy="231.7" rx="2.6" ry="2.8" /><line fill="none" stroke="#000000" stroke-miterlimit="10" x1="138.5" y1="231.8" x2="138.5" y2="259.8" /><path fill-rule="evenodd" clip-rule="evenodd" d="M140.2,258.9c-2.5-1.1-5.5,0-6.7,2.5c-1.1,2.5,0,5.5,2.5,6.7c0.1,0.1,0.2,0.1,0.4,0.1c-0.9,3.2-4.1,5.5-4.1,5.5c6.8-2,9.3-5.9,10.1-7.6c0.1-0.2,0.2-0.3,0.3-0.5C143.8,263.1,142.7,260.1,140.2,258.9z M136.5,262.8c0.4-0.8,1.4-1.3,2.2-0.8s1.3,1.4,0.8,2.2c-0.4,0.8-1.4,1.3-2.2,0.8C136.5,264.7,136,263.7,136.5,262.8z" /></g>'
            );
    }

    /// @dev Earrings N°6 => Monk Ear Black
    function item_6() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><g><ellipse transform="matrix(0.9952 -9.784740e-02 9.784740e-02 0.9952 -23.5819 29.5416)" fill="#FFEDED" stroke="#000000" stroke-width="1" stroke-miterlimit="10.0039" cx="289.4" cy="255.2" rx="8" ry="8.1" /><ellipse transform="matrix(1.784754e-02 -0.9998 0.9998 1.784754e-02 24.9032 543.924)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" fill="#33112E" enable-background="new    " cx="289.3" cy="259.3" rx="2.2" ry="4.9" /></g><path fill="#A5CBCC" stroke="#000000" stroke-miterlimit="10.0039" d="M283.4,250.2c3.9,0.5,8.2,0.4,12.1-0.1C295.7,250.1,289.6,243,283.4,250.2z" /><line fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10.0039" x1="289.9" y1="244.7" x2="289.6" y2="247.3" /></g><g display="inline" ><g><ellipse transform="matrix(0.9952 -9.784740e-02 9.784740e-02 0.9952 -24.1729 14.6915)" fill="#FFEDED" stroke="#000000" stroke-width="1" stroke-miterlimit="10.0039" cx="137.7" cy="253.8" rx="8" ry="8.1" /><ellipse transform="matrix(1.784754e-02 -0.9998 0.9998 1.784754e-02 -122.6851 390.7122)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" fill="#33112E" enable-background="new    " cx="137.5" cy="257.8" rx="2.2" ry="4.9" /></g><path fill="#A5CBCC" stroke="#000000" stroke-miterlimit="10.0039" d="M131.8,248.8c3.9,0.5,8.1,0.4,12-0.1C143.7,248.6,138,241.6,131.8,248.8z" /><line fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10.0039" x1="138" y1="243.2" x2="137.8" y2="245.8" /></g><g id="Ring_00000134960622859342767820000003127110941457600397_" display="inline" ><path fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M289,234.7c0,0-4.4,2.1-3.2,6.4c1,4.3,5.3,3.8,5.6,3.6s3.2-0.9,3.1-5.2" /><path fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M137,232.9c0,0-4.4,2.1-3.2,6.4c1,4.3,5.3,3.8,5.6,3.6c0.3-0.1,3.3-0.6,3.2-4.8" /></g>'
            );
    }

    /// @dev Earrings N°7 => Ring White
    function item_7() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill="none" stroke="#FFEDED" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M289,234.7c0,0-4.4,2.1-3.2,6.4c1,4.3,4.4,4,4.8,4c0.3,0,3.9-0.2,3.9-4.2"  /><path display="inline" fill="none" stroke="#FFEDED" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M137,232.9c0,0-4.4,2.1-3.2,6.4c1,4.3,4.5,3.8,4.8,3.6c0.4-0.1,1.6,0.2,3.4-2.3"  />'
            );
    }

    /// @dev Earrings N°8 => Circle White
    function item_8() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><ellipse fill="#FFEDED" cx="137.6" cy="229.1" rx="2.5" ry="3" /></g><g display="inline" ><ellipse fill="#FFEDED" cx="291.6" cy="231.8" rx="3.4" ry="3.5" /></g>'
            );
    }

    /// @dev Earrings N°9 => Tomoe Ear
    function item_9() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M289,234.7c0,0-4.4,2.1-3.2,6.4c1,4.3,5.3,3.8,5.6,3.6s3.2-0.9,3.1-5.2"  /><path display="inline" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M135.9,232.9c0,0-4.4,2.1-3.2,6.4c1,4.3,5.3,3.8,5.6,3.6c0.3-0.1,3.3-0.6,3.2-4.8"  /><g display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" d="M294.7,250.1c0,0-2,5.6-11.3,7.4c0,0,3.4-2,4.6-5.2" /><path fill-rule="evenodd" clip-rule="evenodd" d="M294.6,250.4c1.5-2.4,0.6-5.5-1.8-6.9c-2.4-1.5-5.5-0.6-6.9,1.8c-1.5,2.4-0.6,5.5,1.8,6.9C290.1,253.5,293.2,252.8,294.6,250.4z M288.8,247c0.5-0.8,1.5-1,2.3-0.6c0.8,0.5,1,1.5,0.6,2.3c-0.5,0.8-1.5,1-2.3,0.6C288.5,248.9,288.4,247.8,288.8,247z" /></g><g display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" d="M131.8,247.3c0,0,0.4,6,8.8,10.2c0,0-2.7-2.8-3-6.3" /><path fill-rule="evenodd" clip-rule="evenodd" d="M131.8,247.6c-0.7-2.7,0.9-5.4,3.6-6.1s5.4,0.9,6.1,3.6c0.7,2.7-0.9,5.4-3.6,6.1C135.2,252,132.6,250.3,131.8,247.6z M138.3,245.9c-0.2-0.9-1.1-1.5-2.1-1.3c-0.9,0.2-1.5,1.1-1.3,2.1c0.2,0.9,1.1,1.5,2.1,1.3C138,247.7,138.5,246.8,138.3,245.9z" /></g>'
            );
    }

    /// @dev Earrings N°10 => Monk Ear Red
    function item_10() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><g><ellipse transform="matrix(0.9952 -9.784740e-02 9.784740e-02 0.9952 -23.5819 29.5416)" fill="#B50D5E" stroke="#000000" stroke-width="1" stroke-miterlimit="10.0039" cx="289.4" cy="255.2" rx="8" ry="8.1" /><ellipse transform="matrix(1.784754e-02 -0.9998 0.9998 1.784754e-02 24.9032 543.924)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" fill="#33112E" enable-background="new    " cx="289.3" cy="259.3" rx="2.2" ry="4.9" /></g><path fill="#A5CBCC" stroke="#000000" stroke-miterlimit="10.0039" d="M283.4,250.2c3.9,0.5,8.2,0.4,12.1-0.1C295.7,250.1,289.6,243,283.4,250.2z" /><line fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10.0039" x1="289.9" y1="244.7" x2="289.6" y2="247.3" /></g><g display="inline" ><g><ellipse transform="matrix(0.9952 -9.784740e-02 9.784740e-02 0.9952 -24.1729 14.6915)" fill="#B50D5E" stroke="#000000" stroke-width="1" stroke-miterlimit="10.0039" cx="137.7" cy="253.8" rx="8" ry="8.1" /><ellipse transform="matrix(1.784754e-02 -0.9998 0.9998 1.784754e-02 -122.6851 390.7122)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" fill="#33112E" enable-background="new    " cx="137.5" cy="257.8" rx="2.2" ry="4.9" /></g><path fill="#A5CBCC" stroke="#000000" stroke-miterlimit="10.0039" d="M131.8,248.8c3.9,0.5,8.1,0.4,12-0.1C143.7,248.6,138,241.6,131.8,248.8z" /><line fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10.0039" x1="138" y1="243.2" x2="137.8" y2="245.8" /></g><g id="Ring" display="inline" ><path fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M289,234.7c0,0-4.4,2.1-3.2,6.4c1,4.3,5.3,3.8,5.6,3.6s3.2-0.9,3.1-5.2" /><path fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M137,232.9c0,0-4.4,2.1-3.2,6.4c1,4.3,5.3,3.8,5.6,3.6c0.3-0.1,3.3-0.6,3.2-4.8" /></g>'
            );
    }

    /// @dev Earrings N°11 => Ring Black
    function item_11() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M289,234.7c0,0-4.4,2.1-3.2,6.4c1,4.3,4.4,4,4.8,4c0.3,0,3.9-0.2,3.9-4.2"  /><path display="inline" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M137,232.9c0,0-4.4,2.1-3.2,6.4c1,4.3,4.5,3.8,4.8,3.6c0.4-0.1,1.6,0.2,3.4-2.3"  />'
            );
    }

    /// @dev Earrings N°12 => Ring Red
    function item_12() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill="none" stroke="#B50D5E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M289,234.7c0,0-4.4,2.1-3.2,6.4c1,4.3,4.4,4,4.8,4c0.3,0,3.9-0.2,3.9-4.2"  /><path display="inline" fill="none" stroke="#B50D5E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M137,232.9c0,0-4.4,2.1-3.2,6.4c1,4.3,4.5,3.8,4.8,3.6c0.4-0.1,1.6,0.2,3.4-2.3"  />'
            );
    }

    /// @dev Earrings N°13 => Circle Black
    function item_13() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><ellipse cx="137.6" cy="229.1" rx="2.5" ry="3" /></g><g display="inline" ><ellipse cx="291.6" cy="231.8" rx="3.4" ry="3.5" /></g>'
            );
    }

    /// @dev Earrings N°14 => Circle Red
    function item_14() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><ellipse fill="#B50D5E" cx="137.6" cy="229.1" rx="2.5" ry="3" /></g><g display="inline" ><ellipse fill="#B50D5E" cx="291.6" cy="231.8" rx="3.4" ry="3.5" /></g>'
            );
    }

    /// @notice Return the skin name of the given id
    /// @param id The skin Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Tomoe Drop Gold";
        } else if (id == 2) {
            name = "Tomoe Drop White";
        } else if (id == 3) {
            name = "Monk Ear White";
        } else if (id == 4) {
            name = "Tomoe Ear White";
        } else if (id == 5) {
            name = "Tomoe Drop";
        } else if (id == 6) {
            name = "Monk Ear Black";
        } else if (id == 7) {
            name = "Ring White";
        } else if (id == 8) {
            name = "Circle White";
        } else if (id == 9) {
            name = "Tomoe Ear";
        } else if (id == 10) {
            name = "Monk Ear Red";
        } else if (id == 11) {
            name = "Ring Black";
        } else if (id == 12) {
            name = "Ring Red";
        } else if (id == 13) {
            name = "Circle Black";
        } else if (id == 14) {
            name = "Circle Red";
        }
    }

    /// @dev The base SVG for the body
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="earrings">', children, "</g>"));
    }
}
