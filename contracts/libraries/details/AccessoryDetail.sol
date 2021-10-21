// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";
import "./constants/Colors.sol";

/// @title Accessory SVG generator
library AccessoryDetail {
    /// @dev Accessory N°1 => None
    function item_1() public pure returns (string memory) {
        return base(horn("E31466"));
    }

    /// @dev Accessory N°2 => Bloody Horn
    function item_2() public pure returns (string memory) {
        return base(horn("E31466"));
    }

    /// @dev Accessory N°3 => Bloody Small Horn
    function item_3() public pure returns (string memory) {
        return base(small_horn("E31466"));
    }

    /// @dev Accessory N°4 => Bloody Monk
    function item_4() public pure returns (string memory) {
        return base(monk("B50D5E"));
    }

    /// @dev Accessory N°5 => Moon Horn
    function item_5() public pure returns (string memory) {
        return base(horn("2A2C38"));
    }

    /// @dev Accessory N°6 => Lunar Small Horn
    function item_6() public pure returns (string memory) {
        return base(small_horn("2A2C38"));
    }

    /// @dev Accessory N°7 => Lunar Monk
    function item_7() public pure returns (string memory) {
        return base(monk("242630"));
    }

    /// @dev Accessory N°8 => Power Stick
    function item_8() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M279.7,105.3l21.9-26.8c-0.1-0.8-2.8-7.3-10.8-8.8l-21.9,26.8C270.8,101.9,274.2,105.2,279.7,105.3z" /><g><path d="M279.6,109.5c-1.7,0.2-3.5,0.1-5.2-0.3s-3.3-1.3-4.8-2.3c-1.4-1-2.6-2.4-3.5-4c-0.5-0.7-0.8-1.6-1.1-2.4c-0.3-0.8-0.5-1.7-0.7-2.5c0.4,0.7,0.7,1.6,1.1,2.3c0.4,0.7,0.8,1.5,1.4,2.1c0.9,1.4,2.2,2.5,3.4,3.5c1.4,1,2.8,1.8,4.4,2.4C276.1,109,277.8,109.3,279.6,109.5z" /></g></g><g id="Power_Head" display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M147.2,105.1l-21.9-26.8c0.1-0.8,2.8-7.3,10.8-8.8l21.8,26.8C156,101.9,152.7,105,147.2,105.1z" /><g><path d="M147.2,109.4c1.7-0.1,3.3-0.5,4.9-1.1c1.6-0.5,3-1.4,4.4-2.4s2.5-2.2,3.4-3.5c0.5-0.6,0.9-1.5,1.4-2.1c0.4-0.7,0.7-1.6,1.1-2.3c-0.2,0.8-0.4,1.7-0.7,2.5s-0.6,1.7-1.1,2.4c-0.8,1.6-2.1,2.8-3.5,4c-1.5,1-3,1.9-4.8,2.3C150.8,109.6,149,109.7,147.2,109.4z" /></g></g>'
            );
    }

    /// @dev Accessory N°9 => Kitsune
    function item_9() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><path fill="#FFDAEA" stroke="#000000" stroke-miterlimit="10" d="M247.2,90.4c9-7.5,17.4-14.8,41.9-26.4c0,0,1.8,35.4-6.7,48.6" /><path fill="#141113" d="M254.7,94.6c7.2-6.9,18.6-15.9,27.9-18.6c0.3,1.4,1.7,14.3-6,32.6C276.7,108.6,263.3,101.6,254.7,94.6z" /></g><g display="inline" ><path fill="#FFDAEA" stroke="#000000" stroke-miterlimit="10" d="M174.7,89.1c-8.7-7.4-16.9-14.6-40.7-25.9c0,0-2,24.6,6.5,47.8" /><path fill="#141113" d="M167.7,93.3c-6.8-6.8-17.6-15.8-26.3-18.4c-0.3,1.3-1.6,14.1,5.6,32.3C147,107.2,159.7,100.3,167.7,93.3z" /></g><polyline display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFDAEA" stroke="#000000" stroke-width="0.5" stroke-linecap="round" stroke-miterlimit="10" points="138.6,66.4 137.7,59.4 136.2,64.3 132,59.3 134.2,65.6 126.8,62.7 134.7,68.7 "  /><polyline display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFDAEA" stroke="#000000" stroke-width="0.5" stroke-linecap="round" stroke-miterlimit="10" points="284.4,66.9 285.4,59.9 286.8,64.8 291,59.8 288.8,66.1 296.3,63.2 288.4,69.2 "  />'
            );
    }

    /// @dev Accessory N°10 => Horn White
    function item_10() public pure returns (string memory) {
        return base(horn("FFDAEA"));
    }

    /// @dev Accessory N°11 => Small Horn White
    function item_11() public pure returns (string memory) {
        return base(small_horn("FFDAEA"));
    }

    /// @dev Accessory N°12 => Heart
    function item_12() public pure returns (string memory) {
        return
            base(
                '<path id="Heart" d="M185,360.8c1.1-10.4,9.9-19.1,21.7-18c9.6,0.8,16.1,10.8,15,21.2c-1.1,10.4-11.2,18.3-20.9,17.3S183.8,371.2,185,360.8z"/>'
            );
    }

    /// @dev Accessory N°13 => Monk White
    function item_13() public pure returns (string memory) {
        return base(monk("FFEDED"));
    }

    /// @dev Accessory N°14 => Power Head
    function item_14() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M280.3,87.8l6.6-15.5c-0.2-0.3-2.6-3.1-7-2.9l-6.5,15.5C275.4,87.3,277.6,88.4,280.3,87.8z" /><g><path d="M280.9,89.9c-0.8,0.5-1.8,0.7-2.7,0.8c-0.9,0.1-2-0.1-2.9-0.4c-0.9-0.4-1.8-0.8-2.5-1.6c-0.7-0.6-1.3-1.6-1.6-2.4c0.7,0.6,1.4,1.3,2.1,1.8s1.5,0.9,2.3,1.3C277.3,89.9,279.1,90,280.9,89.9z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M288.8,109.2l11.5-16.4c-0.1-0.4-1.9-4.1-6.5-4.5l-11.4,16.4C283.7,107.9,285.7,109.4,288.8,109.2z" /><g><path d="M288.9,111.7c-0.9,0.4-2,0.5-3,0.4s-2.1-0.4-2.9-1s-1.7-1.4-2.2-2.3c-0.3-0.4-0.4-0.9-0.6-1.4c-0.1-0.5-0.2-1-0.3-1.5c0.3,0.4,0.5,0.8,0.8,1.3c0.3,0.4,0.5,0.8,0.8,1.1c0.6,0.7,1.3,1.4,2.1,1.9C284.8,111.3,286.9,111.6,288.9,111.7z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M151.4,101.6L143,83.5c-0.4-0.2-4.1-0.6-6.5,3l8.3,18.1C148.1,105,150.3,104.2,151.4,101.6z" /><g><path d="M153.4,102.9c-0.1,0.9-0.4,1.9-0.9,2.6c-0.5,0.8-1.3,1.5-2.2,2c-0.8,0.4-1.9,0.7-2.8,0.6c-0.5,0-0.9-0.1-1.5-0.2c-0.4-0.1-0.9-0.3-1.4-0.5c0.5,0,0.9,0,1.4,0s0.9,0,1.4-0.1c0.8-0.1,1.7-0.4,2.4-0.7C151.4,105.8,152.6,104.4,153.4,102.9z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M258.9,80.7l8-20.6c-0.2-0.4-2.5-3.6-7-2.6L252,78.1C253.8,80.8,256.1,81.8,258.9,80.7z" /><g><path d="M259.7,83.2c-1.6,1.1-3.8,1.7-5.7,1c-0.9-0.3-1.9-0.8-2.5-1.7c-0.4-0.3-0.6-0.8-0.8-1.3c-0.2-0.4-0.4-0.9-0.6-1.4c0.3,0.4,0.6,0.7,0.9,1.1c0.3,0.3,0.6,0.7,1,0.9c0.6,0.6,1.5,1,2.3,1.4c0.8,0.3,1.8,0.3,2.7,0.3C257.9,83.7,258.8,83.5,259.7,83.2z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M224.8,71.6l0.1-16c-0.3-0.2-3.4-1.9-7.1,0l-0.1,16C220.3,73.1,222.7,73.2,224.8,71.6z" /><g><path d="M226.3,73.3c-0.5,0.7-1.3,1.4-2.1,1.8s-1.8,0.6-2.7,0.7c-0.9,0-1.9-0.1-2.7-0.5c-0.8-0.3-1.6-0.9-2.2-1.6c0.8,0.3,1.7,0.6,2.5,0.7c0.8,0.2,1.7,0.3,2.4,0.2C222.9,74.6,224.6,74.1,226.3,73.3z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M263.2,106l3.5-12.9c-0.2-0.3-2.2-2.2-5.4-1.5l-3.4,12.9C259.6,106.2,261.3,106.8,263.2,106z" /><g><path d="M264,107.5c-0.5,0.5-1.1,0.8-1.9,1c-0.7,0.2-1.5,0.2-2.3,0c-0.7-0.2-1.5-0.5-2-1c-0.6-0.4-1-1-1.4-1.8c0.6,0.4,1.1,0.7,1.8,1c0.5,0.3,1.1,0.5,1.8,0.6C261.3,108,262.4,107.9,264,107.5z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M241.3,105.3l2.1-12.4c-0.2-0.2-3-1.9-6.8-1l-2,12.4C236.8,105.6,239.1,106.1,241.3,105.3z" /><g><path d="M242.5,107.1c-0.7,0.4-1.5,0.7-2.3,0.9c-0.8,0.2-1.7,0.2-2.5,0.1s-1.7-0.3-2.4-0.7c-0.4-0.2-0.7-0.4-1-0.6s-0.6-0.5-0.9-0.8c0.7,0.4,1.5,0.8,2.2,1c0.7,0.3,1.6,0.5,2.3,0.6C239.2,107.9,240.9,107.7,242.5,107.1z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M225.2,96.1l1.3-13.5c-0.2-0.2-2.8-1.8-6.1-0.5l-1.3,13.5C221.2,96.9,223.3,97.2,225.2,96.1z" /><g><path d="M226.3,98.1c-1.1,1-2.7,1.6-4.4,1.5c-0.8-0.1-1.6-0.2-2.3-0.6c-0.3-0.1-0.7-0.4-1-0.6s-0.6-0.5-0.8-0.7c0.7,0.3,1.4,0.7,2.1,0.9c0.7,0.3,1.5,0.4,2.2,0.4c0.7,0.1,1.5,0,2.2-0.2C224.8,98.7,225.6,98.4,226.3,98.1z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M204.5,100.5l-0.6-17.2c-0.3-0.2-3.5-1.8-7.1,0.3l0.7,17.2C200,102.2,202.4,102.2,204.5,100.5z" /><g><path d="M206.1,103.4c-0.5,0.8-1.1,1.5-2,1.9c-0.8,0.5-1.8,0.8-2.7,0.8c-0.9,0.1-1.9,0-2.8-0.4c-0.4-0.1-0.8-0.4-1.3-0.6c-0.4-0.3-0.7-0.5-1-0.8c0.4,0.1,0.8,0.3,1.3,0.4c0.4,0.1,0.8,0.3,1.3,0.3c0.8,0.2,1.7,0.2,2.5,0.2C202.9,105,204.5,104.3,206.1,103.4z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M185.2,95.3l-1.9-12.9c-0.3-0.2-3.1-1-5.9,0.9l2,12.9C181.6,97,183.6,96.8,185.2,95.3z" /><g><path d="M186.8,97.3c-0.3,0.7-0.9,1.3-1.6,1.8c-0.6,0.4-1.4,0.7-2.2,0.9c-0.8,0.1-1.6,0.1-2.4-0.1c-0.7-0.2-1.5-0.5-2.1-1c0.7,0.1,1.5,0.2,2.2,0.2s1.4,0,2.1-0.1C184.2,98.7,185.4,98.1,186.8,97.3z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M171.7,107.8l-2.3-11.9c-0.3-0.1-3-0.7-5.7,1.1l2.4,11.9C168,109.5,170.1,109.2,171.7,107.8z" /><g><path d="M173.2,109.5c-0.3,0.7-0.8,1.3-1.5,1.8c-0.6,0.4-1.4,0.8-2.1,0.9c-0.7,0.2-1.6,0.2-2.3,0c-0.7-0.1-1.5-0.4-2.1-0.8c0.7,0,1.5,0.1,2.1,0.1c0.7,0,1.4-0.1,2-0.2C170.6,111,171.9,110.4,173.2,109.5z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M241,70.8l4.3-17.9c-0.2-0.3-3-2.8-7.2-1.7l-4.2,17.9C236,71.3,238.4,72,241,70.8z" /><g><path d="M241.9,73c-0.7,0.6-1.6,1.1-2.5,1.4s-2,0.3-2.9,0.1c-0.9-0.2-1.9-0.6-2.7-1.3c-0.4-0.3-0.7-0.6-1-1s-0.5-0.7-0.8-1.1c0.4,0.2,0.7,0.5,1.1,0.8c0.4,0.2,0.7,0.5,1.1,0.7c0.7,0.4,1.6,0.7,2.4,0.8C238.4,73.8,240.1,73.5,241.9,73z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M184.9,72.2l-4.1-17.5c-0.3-0.2-3.4-1.3-6.1,1.5l4.2,17.5C181.3,74.7,183.3,74.4,184.9,72.2z" /><g><path d="M186.5,73.8c-0.2,0.8-0.6,1.6-1.3,2.2c-0.6,0.6-1.4,1.1-2.2,1.4c-0.8,0.2-1.8,0.3-2.6,0c-0.4-0.1-0.8-0.3-1.3-0.4c-0.4-0.2-0.7-0.4-1-0.7c0.4,0.1,0.8,0.2,1.3,0.2c0.4,0,0.7,0.1,1.1,0.1c0.7,0.1,1.5,0,2.2-0.2C184.2,75.9,185.4,74.9,186.5,73.8z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M167.3,82.7l-6.7-16.6c-0.4-0.1-4-0.5-6.7,2.7l6.7,16.6C163.6,86,165.9,85.2,167.3,82.7z" /><g><path d="M169.3,83.9c-0.2,0.9-0.6,1.8-1.3,2.5c-0.6,0.7-1.4,1.4-2.3,1.8c-0.9,0.4-1.9,0.6-2.8,0.5c-0.5,0-0.9-0.1-1.4-0.2c-0.4-0.1-0.8-0.3-1.3-0.5c0.5,0,0.9,0,1.4,0s0.8,0,1.3-0.1c0.8-0.1,1.7-0.3,2.4-0.7C166.9,86.6,168,85.4,169.3,83.9z" /></g></g><g display="inline" ><path stroke="#000000" stroke-miterlimit="10" d="M206.1,67.6l-0.8-19.4c-0.3-0.3-3.2-2.1-6.6,0.3l0.9,19.4C201.9,69.5,204,69.6,206.1,67.6z" /><g><path d="M207.3,69.6c-0.3,0.8-0.9,1.5-1.7,2c-0.7,0.5-1.6,0.9-2.5,1s-1.9,0-2.7-0.5c-0.4-0.1-0.7-0.5-1.1-0.7c-0.3-0.3-0.6-0.6-0.9-0.9c0.4,0.1,0.8,0.3,1.1,0.5c0.4,0.1,0.7,0.3,1.1,0.4c0.7,0.2,1.6,0.3,2.3,0.2C204.5,71.4,205.9,70.7,207.3,69.6z" /></g></g>'
            );
    }

    /// @dev Accessory N°15 => Kin Horn
    function item_15() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><linearGradient id="Gradientkinhorn" gradientUnits="userSpaceOnUse" x1="255.6" y1="-356" x2="304.8" y2="-356" gradientTransform="matrix(1 0 0 -1 0 -270)"><stop offset="0" stop-color="#FFB451" /><stop offset="0.5259" stop-color="#F7EC94" /><stop offset="1" stop-color="#FF9121" /></linearGradient><path fill-rule="evenodd" clip-rule="evenodd" fill="url(#Gradientkinhorn)" stroke="#000000" stroke-miterlimit="10" d="M255.6,94.5c0,0,36.9-18,49.2-42.8c0,0-1.8,38.5-25.6,68.6C267.8,114.5,259.6,105.9,255.6,94.5z" /><linearGradient id="SVGID_00000038399919860379428020000001905538202183111590_" gradientUnits="userSpaceOnUse" x1="255.4985" y1="-377.2515" x2="279.7115" y2="-377.2515" gradientTransform="matrix(1 0 0 -1 0 -270)"><stop offset="0" style="stop-color:#FF9519" /><stop offset="1" style="stop-color:#FAF299" /></linearGradient><path fill="none" stroke="url(#SVGID_00000038399919860379428020000001905538202183111590_)" stroke-width="2" stroke-miterlimit="10" d="M256.5,94.8c-0.1,0.2,4.9,18.5,22.9,24.4" /></g><g display="inline" ><linearGradient id="SVGID_00000104701910233288470920000016524603851795941768_" gradientUnits="userSpaceOnUse" x1="113.3" y1="-355.45" x2="162.5" y2="-355.45" gradientTransform="matrix(1 0 0 -1 0 -270)"><stop offset="0" style="stop-color:#FFB451" /><stop offset="0.5259" style="stop-color:#F7EC94" /><stop offset="1" style="stop-color:#FF9121" /></linearGradient><path fill-rule="evenodd" clip-rule="evenodd" fill="url(#SVGID_00000104701910233288470920000016524603851795941768_)" stroke="#000000" stroke-miterlimit="10" d="M162.5,94c0,0-36.9-18.1-49.2-43c0,0,1.8,38.6,25.6,68.9C150.3,114.1,158.5,105.4,162.5,94z" /><linearGradient id="SVGID_00000029029394541148799170000005544420656428366773_" gradientUnits="userSpaceOnUse" x1="138.6048" y1="-376.8041" x2="162.8014" y2="-376.8041" gradientTransform="matrix(1 0 0 -1 0 -270)"><stop offset="0" style="stop-color:#FAF299" /><stop offset="1" style="stop-color:#FF9121" /></linearGradient><path fill="none" stroke="url(#SVGID_00000029029394541148799170000005544420656428366773_)" stroke-width="2" stroke-miterlimit="10" d="M161.8,94.3c0.1,0.2-5.1,19-22.9,24.5" /></g>'
            );
    }

    /// @dev Accessory N°16 => Kin Monk
    function item_16() public pure returns (string memory) {
        return
            base(
                '<style type="text/css"> .st0{fill:url(#Gradientkinmonk);stroke:#000000;stroke-width:1.9994;stroke-miterlimit:10.0019;} .st10{opacity:0.54;fill-rule:evenodd;clip-rule:evenodd;enable-background:new ;} </style> <g> <linearGradient id="Gradientkinmonk" gradientUnits="userSpaceOnUse" x1="264.55" y1="1001.85" x2="268.4765" y2="997.9235" gradientTransform="matrix(1 0 0 1 0 -692)"> <stop offset="0" stop-color="#FFB451"/> <stop offset="0.4231" stop-color="#F7E394"/> <stop offset="1" stop-color="#FF9B43"/> </linearGradient> <path class="st0" d="M264,308.6c5.5-0.5,10.4,3.5,10.9,9.1s-3.5,10.5-9,11s-10.4-3.5-10.9-9.1S258.5,309.2,264,308.6z"/> <path class="st0" d=" M248.7,314c5.5-0.5,10.4,3.5,10.9,9.1s-3.5,10.5-9,11s-10.4-3.5-10.9-9.1C239.2,319.5,243.2,314.6,248.7,314z"/> <path class="st0" d=" M168,306.1c5.5-0.5,10.4,3.5,10.9,9.1s-3.5,10.5-9,11s-10.4-3.5-10.9-9.1C158.5,311.6,162.5,306.7,168,306.1z"/> <path class="st0" d=" M181.9,313.7c5.5-0.5,10.4,3.5,10.9,9.1s-3.5,10.5-9,11s-10.4-3.5-10.9-9.1S176.4,314.3,181.9,313.7z"/> <path class="st0" d=" M197.7,318c5.5-0.5,10.4,3.5,10.9,9.1s-3.5,10.5-9,11s-10.4-3.5-10.9-9.1C188.2,323.5,192.2,318.6,197.7,318z"/> <path class="st0" d=" M214.4,319.2c5.5-0.5,10.4,3.5,10.9,9.1s-3.5,10.5-9,11s-10.4-3.5-10.9-9.1C204.9,324.7,208.9,319.8,214.4,319.2z"/> <path class="st0" d=" M231.3,317.3c5.5-0.5,10.4,3.5,10.9,9.1s-3.5,10.5-9,11s-10.4-3.5-10.9-9.1C221.8,322.8,225.8,317.9,231.3,317.3z"/> <path class="st0" d=" M214.4,319.2c5.5-0.5,10.4,3.5,10.9,9.1s-3.5,10.5-9,11s-10.4-3.5-10.9-9.1C204.9,324.7,208.9,319.8,214.4,319.2z"/> <path class="st0" d=" M167.5,306.1c0,0,3-4.2,7.1-3.6l-0.5,4.7C174.2,307.2,171.4,305.5,167.5,306.1z"/> <path class="st0" d=" M271.3,310.1c0,0-0.5-4.7-8.1-5.9l0.3,4.6C263.5,308.8,268.8,308.5,271.3,310.1z"/> </g> <g> <ellipse transform="matrix(0.5209 -0.8536 0.8536 0.5209 -193.9321 295.1039)" class="st10" cx="165.9" cy="320.3" rx="3.1" ry="5.1"/> <ellipse transform="matrix(0.3023 -0.9532 0.9532 0.3023 -186.8916 402.0923)" class="st10" cx="181.2" cy="328.7" rx="2.9" ry="5.3"/> <ellipse transform="matrix(8.016175e-02 -0.9968 0.9968 8.016175e-02 -149.7802 503.466)" class="st10" cx="197.9" cy="332.9" rx="3.1" ry="5.5"/> <ellipse transform="matrix(1.864604e-02 -0.9998 0.9998 1.864604e-02 -123.3302 543.6484)" class="st10" cx="215.3" cy="334.7" rx="2.6" ry="5.6"/> <ellipse transform="matrix(0.9869 -0.1616 0.1616 0.9869 -50.6334 42.0687)" class="st10" cx="233.3" cy="332.3" rx="5.3" ry="3.1"/> <ellipse transform="matrix(0.9587 -0.2843 0.2843 0.9587 -83.2092 85.1148)" class="st10" cx="251.6" cy="329.2" rx="5.3" ry="3.1"/> <ellipse transform="matrix(0.8562 -0.5167 0.5167 0.8562 -127.9575 184.9351)" class="st10" cx="268.2" cy="322.3" rx="5.6" ry="3.1"/> </g>'
            );
    }

    function small_horn(string memory color) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    abi.encodePacked(
                        '<g display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" fill="#',
                        color,
                        '" stroke="#000000" stroke-miterlimit="10" d="M257.5,100.7c0,0,10.6-0.7,16.6-12.7c0,0,6.3,10.6-5.2,25.1C263.4,110.3,259.4,106.1,257.5,100.7z" /><path fill-rule="evenodd" clip-rule="evenodd" fill="#',
                        color,
                        '" stroke="#',
                        color,
                        '" stroke-miterlimit="10" d="M258.2,101.1c0,0.1,1,9.2,10.6,11.4" /></g>'
                    ),
                    abi.encodePacked(
                        '<g display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" fill="#',
                        color,
                        '" stroke="#000000" stroke-miterlimit="10" d="M159.4,101.6c0,0-10.6-0.7-16.6-12.7c0,0-6.3,10.6,5.2,25.1C153.4,111.2,157.5,107,159.4,101.6z" /><path fill-rule="evenodd" clip-rule="evenodd" fill="#',
                        color,
                        '" stroke="#',
                        color,
                        '" stroke-miterlimit="10" d="M158.9,102c0,0.1-1.5,9.4-10.7,11.3" /></g>'
                    )
                )
            );
    }

    function horn(string memory color) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<g><path d="M255.6,94.5s36.9-18,49.2-42.8c0,0-1.8,38.5-25.6,68.6C267.8,114.5,259.6,105.9,255.6,94.5Z" transform="translate(0 0.5)" fill="#',
                    color,
                    '" stroke="#000" stroke-miterlimit="10" fill-rule="evenodd"/> <path d="M256.7,94.8c-.1.2,4.3,18.1,22.8,24.4" transform="translate(0 0.5)" fill="none" stroke="#',
                    color,
                    '" stroke-miterlimit="10" stroke-width="2"/> </g> <g> <path d="M160.5,94s-36.9-18.1-49.2-43c0,0,1.8,38.6,25.6,68.9C148.3,114.1,156.5,105.4,160.5,94Z" transform="translate(0 0.5)" fill="#',
                    color,
                    '" stroke="#000" stroke-miterlimit="10" fill-rule="evenodd"/> <path d="M159.7,94.1c.1.2-5.1,19-22.9,24.5" transform="translate(0 0.5)" fill="none" stroke="#',
                    color,
                    '" stroke-miterlimit="10" stroke-width="2"/></g>'
                )
            );
    }

    function monk(string memory color) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    abi.encodePacked(
                        '<g display="inline" ><ellipse transform="matrix(0.9951 -9.859076e-02 9.859076e-02 0.9951 -30.1289 27.6785)" fill="#',
                        color,
                        '" stroke="#000000" stroke-width="1.9991" stroke-miterlimit="10.001" cx="265" cy="318.7" rx="10" ry="10.1" /><ellipse transform="matrix(0.9951 -9.868323e-02 9.868323e-02 0.9951 -30.7637 26.2227)" fill="#',
                        color,
                        '" stroke="#000000" stroke-width="1.9993" stroke-miterlimit="10.0012" cx="249.7" cy="324.1" rx="10" ry="10.1" /><ellipse transform="matrix(0.9952 -9.784912e-02 9.784912e-02 0.9952 -30.1289 18.0538)" fill="#',
                        color,
                        '" stroke="#000000" stroke-width="2" stroke-miterlimit="10.0039" cx="169" cy="316.2" rx="10" ry="10.1" /><ellipse transform="matrix(0.9952 -9.784608e-02 9.784608e-02 0.9952 -30.8049 19.4498)" fill="#',
                        color,
                        '" stroke="#000000" stroke-width="2" stroke-miterlimit="10.0039" cx="182.9" cy="323.8" rx="10" ry="10.1" /><ellipse transform="matrix(0.9952 -9.784740e-02 9.784740e-02 0.9952 -31.1502 21.0167)" fill="#'
                    ),
                    color,
                    '" stroke="#000000" stroke-width="2" stroke-miterlimit="10.0039" cx="198.7" cy="328.1" rx="10" ry="10.1" />',
                    abi.encodePacked(
                        color,
                        '<ellipse transform="matrix(0.9952 -9.784740e-02 9.784740e-02 0.9952 -31.1875 22.6565)" fill="#',
                        color,
                        '" stroke="#000000" stroke-width="2" stroke-miterlimit="10.0039" cx="215.4" cy="329.3" rx="10" ry="10.1" /><ellipse transform="matrix(0.9952 -9.784871e-02 9.784871e-02 0.9952 -30.9209 24.3013)" fill="#',
                        color,
                        '" stroke="#000000" stroke-width="2" stroke-miterlimit="10.0039" cx="232.3" cy="327.4" rx="10" ry="10.1" /><ellipse transform="matrix(0.9952 -9.784740e-02 9.784740e-02 0.9952 -31.1875 22.6565)" fill="#',
                        color,
                        '" stroke="#000000" stroke-width="2" stroke-miterlimit="10.0039" cx="215.4" cy="329.3" rx="10" ry="10.1" /><path fill="#',
                        color,
                        '" stroke="#000000" stroke-width="2" stroke-miterlimit="10" d="M167.5,306.1c0,0,3-4.2,7.1-3.6l-0.5,4.7C174.2,307.2,171.4,305.5,167.5,306.1z" /><path fill="#',
                        color,
                        '" stroke="#000000" stroke-width="2" stroke-miterlimit="10" d="M271.3,310.1c0,0-0.5-4.7-8.1-5.9l0.3,4.6C263.5,308.8,268.8,308.5,271.3,310.1z" /></g><g display="inline" ><ellipse transform="matrix(0.5209 -0.8536 0.8536 0.5209 -193.8937 295.0872)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " cx="165.9" cy="320.3" rx="3.1" ry="5.1" /><ellipse transform="matrix(0.3023 -0.9532 0.9532 0.3023 -186.8647 402.0681)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " cx="181.2" cy="328.7" rx="2.9" ry="5.3" /><ellipse transform="matrix(8.016321e-02 -0.9968 0.9968 8.016321e-02 -149.6992 503.476)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " cx="197.9" cy="332.8" rx="3.1" ry="5.5" /><ellipse transform="matrix(1.864555e-02 -0.9998 0.9998 1.864555e-02 -123.3718 543.6663)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " cx="215.3" cy="334.7" rx="2.6" ry="5.6" /><ellipse transform="matrix(0.9869 -0.1616 0.1616 0.9869 -50.6334 42.0687)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " cx="233.3" cy="332.3" rx="5.3" ry="3.1" /><ellipse transform="matrix(0.9587 -0.2843 0.2843 0.9587 -83.2092 85.1148)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " cx="251.6" cy="329.2" rx="5.3" ry="3.1" /><ellipse transform="matrix(0.8562 -0.5167 0.5167 0.8562 -127.9572 184.9349)" opacity="0.54" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " cx="268.2" cy="322.3" rx="5.6" ry="3.1" /></g>'
                    )
                )
            );
    }

    /// @notice Return the skin name of the given id
    /// @param id The skin Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "None";
        } else if (id == 2) {
            name = "Bloody Horn";
        } else if (id == 3) {
            name = "Bloody Small Horn";
        } else if (id == 4) {
            name = "Bloody Monk";
        } else if (id == 5) {
            name = "Moon Horn";
        } else if (id == 6) {
            name = "Lunar Small Horn";
        } else if (id == 7) {
            name = "Lunar Monk";
        } else if (id == 8) {
            name = "Power Stick";
        } else if (id == 9) {
            name = "Kitsune";
        } else if (id == 10) {
            name = "Horn White";
        } else if (id == 11) {
            name = "Small Horn White";
        } else if (id == 12) {
            name = "Heart";
        } else if (id == 13) {
            name = "Monk White";
        } else if (id == 14) {
            name = "Power Head";
        } else if (id == 15) {
            name = "Kin Horn";
        } else if (id == 16) {
            name = "Kin Monk";
        }
    }

    /// @dev The base SVG for the body
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="accessory">', children, "</g>"));
    }
}
