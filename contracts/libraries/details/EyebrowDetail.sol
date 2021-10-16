// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";

/// @title Eyebrow SVG generator
library EyebrowDetail {
    /// @dev Eyebrow N°1 => Tomoe Gold
    function item_1() public pure returns (string memory) {
        return
            base(
                '<linearGradient id="SVGID_00000066508419390729279210000000815984306806410897_" gradientUnits="userSpaceOnUse" x1="215.6498" y1="-442.1553" x2="232" y2="-442.1553" gradientTransform="matrix(1 0 0 -1 0 -270)" ><stop offset="0" style="stop-color:#FFB451" /><stop offset="0.5259" style="stop-color:#F7E394" /><stop offset="1" style="stop-color:#FF9B43" /></linearGradient><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="url(#SVGID_00000066508419390729279210000000815984306806410897_)" d="M232,168.9c-6.7-3.4-11.3-1.9-12.8-1.2c-0.1,0-0.3,0.1-0.4,0.1c-2.6,1-3.9,4.1-2.7,6.6c1,2.6,4.1,3.9,6.6,2.7c2.6-1,3.9-4.1,2.7-6.6c0-0.1-0.1-0.2-0.1-0.2C228.1,168.4,232,168.9,232,168.9z M221.4,174.1c-0.9,0.3-1.8,0-2.2-0.9c-0.3-0.9,0-1.8,0.9-2.2c0.9-0.3,1.8,0,2.2,0.9C222.7,172.7,222.2,173.7,221.4,174.1z"  /><linearGradient id="SVGID_00000169552172318176501370000006213919017808816827_" gradientUnits="userSpaceOnUse" x1="171" y1="-442.5519" x2="187.1496" y2="-442.5519" gradientTransform="matrix(1 0 0 -1 0 -270)" ><stop offset="0" style="stop-color:#FFB451" /><stop offset="0.5259" style="stop-color:#F7E394" /><stop offset="1" style="stop-color:#FF9B43" /></linearGradient><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="url(#SVGID_00000169552172318176501370000006213919017808816827_)" d="M184.2,168.3c-0.9-0.5-5.7-2.8-13.2,1c0,0,3.8-0.5,6.6,1.3c-0.1,0.1-0.1,0.2-0.2,0.3c-1.2,2.5,0.1,5.6,2.7,6.6c2.5,1.2,5.6-0.1,6.6-2.7C187.9,172.4,186.7,169.4,184.2,168.3z M183.8,173.6c-0.4,0.9-1.3,1.2-2.2,0.9c-0.9-0.4-1.4-1.4-0.9-2.2c0.4-0.9,1.3-1.2,2.2-0.9C183.8,171.8,184.1,172.7,183.8,173.6z"  />'
            );
    }

    /// @dev Eyebrow N°2 => Tomoe White
    function item_2() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M218.6,168c0,0,5-3.3,13.4,0.9c0,0-4-0.5-6.8,1.4" /><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M218.8,167.8c-2.6,1-3.9,4.1-2.7,6.6c1,2.6,4.1,3.9,6.6,2.7c2.6-1,3.9-4.1,2.7-6.6C224.3,168.1,221.4,166.8,218.8,167.8z M221.4,174.1c-0.9,0.3-1.8,0-2.2-0.9c-0.3-0.9,0-1.8,0.9-2.2c0.9-0.3,1.8,0,2.2,0.9C222.7,172.7,222.2,173.7,221.4,174.1z" /></g><g display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M184.4,168.4c0,0-5-3.3-13.4,0.9c0,0,4-0.5,6.8,1.4" /><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M184,168.2c2.6,1,3.9,4.1,2.7,6.6c-1,2.6-4.1,3.9-6.6,2.7c-2.6-1-3.9-4.1-2.7-6.6C178.7,168.4,181.5,167.2,184,168.2z M181.6,174.5c0.9,0.3,1.8,0,2.2-0.9c0.3-0.9,0-1.8-0.9-2.2c-0.9-0.3-1.8,0-2.2,0.9C180.2,173.1,180.7,174.1,181.6,174.5z" /></g>'
            );
    }

    /// @dev Eyebrow N°3 => Yokai White
    function item_3() public pure returns (string memory) {
        return
            base(
                '<circle display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" cx="184.1" cy="170" r="5.5"  /><circle display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" cx="217" cy="169.8" r="5.5"  />'
            );
    }

    /// @dev Eyebrow N°4 => Elektirc White
    function item_4() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M216,176.7c14.2-2.2,47-5.6,50.4-6.6l-14.8-0.7l17.4-9.1c-17.8,7.7-37.5,12.9-56.3,13.3C213.1,174.8,214.6,176.1,216,176.7z"  /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M186.7,176.7c-12.8-2.1-44.8-5.3-48-6.3l13.5-0.9l-15.4-8.8c15.9,7.4,33.7,11.9,49,13.2C186.1,175.2,186.5,175.5,186.7,176.7z"  />'
            );
    }

    /// @dev Eyebrow N°5 => Thick White
    function item_5() public pure returns (string memory) {
        return
            base(
                '<g id="Thick_00000132070134346443134780000010978170154067995045_" display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M213.7,173.6c-0.6-1.4,0.1-3.1,1.6-3.5c1.7-0.5,4.3-1.2,7.5-1.7c1.5-0.3,13.2-4.2,14.4-4.9c0.2,0.9-6.2,4.1-4.9,3.9c7.3-1.2,14.7-2.2,18.1-2c3.6,0.1,6.4,0.4,9,1.2c0.6,0.2,5.3,1.1,5.9,1.4c0.4,0.2-3-0.1-2.6,0.1c1.9,0.9,3.6,1.9,5.1,3c0,0-28,4.7-40.5,5.3C217.3,176.8,215,176.6,213.7,173.6z" /></g><g id="Thick_00000122686829542946661630000012738471129163927703_" display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M188.8,173.7c0.6-1.4-0.1-3.1-1.6-3.5c-6.4-1.9-9.2-2-7.5-1.7c-1.5-0.3-12.8-4.7-14.1-5.3c-0.2,0.9,5.8,4.6,4.6,4.4c-7.3-1.2-14.7-2.2-18.1-2c-3.6,0.1-6.4,0.4-9,1.2c-0.6,0.2-5.3,1.1-5.9,1.4c-0.4,0.2,3-0.1,2.6,0.1c-1.9,0.9-3.6,1.9-5.1,3c0,0,28,4.7,40.5,5.3C185.2,176.9,187.5,176.7,188.8,173.7z" /></g>'
            );
    }

    /// @dev Eyebrow N°6 => Slayer White
    function item_6() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill="#FFEDED" d="M214,168.3c-0.8,1.5-4.8,12.6,9.4,9.9c0,0,9.6-4.5,12.5-8.1c0,0-6.7,0.6-8.1,1.5c0,0,7.2-3.2,8.5-6.7c0,0-11.4,2.1-12,3.9c0,0,2.7-4.7,4.2-5.3s-7.6,1.4-8.5,3.5c-0.9,2.2,0.5-5.6,2.1-6.1C223.7,160.4,216.9,162.7,214,168.3z"  /><path display="inline" fill="#FFEDED" d="M187.6,168.8c0.8,1.5,4.8,12.6-9.4,9.9c0,0-9.6-4.5-12.5-8.1c0,0,6.7,0.6,8.1,1.5c0,0-7.2-3.2-8.5-6.7c0,0,11.4,2.1,12,3.9c0,0-2.7-4.7-4.2-5.3s7.6,1.4,8.5,3.5c0.9,2.2-0.5-5.6-2.1-6.1C177.9,161,184.9,163.2,187.6,168.8z"  />'
            );
    }

    /// @dev Eyebrow N°7 => Kitsune White
    function item_7() public pure returns (string memory) {
        return
            base(
                '<path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M238.3,166.9c-12.3-3.9-19-1.1-21.3,0.2c-0.1,0-0.2,0.1-0.3,0.2c-0.3,0.1-0.5,0.4-0.6,0.4l0,0l0,0l0,0c-0.9,0.8-1.6,2-1.6,3.3c-0.2,2.7,1.9,5,4.6,5.2c2.7,0.2,5-1.9,5.2-4.6c0.1-0.3,0-0.6,0-1C228.9,166.5,238.3,166.9,238.3,166.9z"  /><path fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M162.6,166.8c12.3-3.9,19-1,21.3,0.3c0.1,0,0.2,0.1,0.3,0.2c0.3,0.1,0.5,0.4,0.6,0.4l0,0l0,0l0,0c0.9,0.8,1.6,2,1.6,3.3c0.2,2.7-1.9,5-4.6,5.2c-2.7,0.2-5-1.9-5.2-4.6c-0.1-0.3,0-0.6,0-1C172,166.5,162.6,166.8,162.6,166.8z"  />'
            );
    }

    /// @dev Eyebrow N°8 => Tomoe Black
    function item_8() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" d="M218.6,168c0,0,5-3.3,13.4,0.9c0,0-4-0.5-6.8,1.4" /><path fill-rule="evenodd" clip-rule="evenodd" d="M218.8,167.8c-2.6,1-3.9,4.1-2.7,6.6c1,2.6,4.1,3.9,6.6,2.7c2.6-1,3.9-4.1,2.7-6.6C224.3,168.1,221.4,166.8,218.8,167.8z M221.4,174.1c-0.9,0.3-1.8,0-2.2-0.9c-0.3-0.9,0-1.8,0.9-2.2c0.9-0.3,1.8,0,2.2,0.9C222.7,172.7,222.2,173.7,221.4,174.1z" /></g><g display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" d="M184.4,168.4c0,0-5-3.3-13.4,0.9c0,0,4-0.5,6.8,1.4" /><path fill-rule="evenodd" clip-rule="evenodd" d="M184,168.2c2.6,1,3.9,4.1,2.7,6.6c-1,2.6-4.1,3.9-6.6,2.7c-2.6-1-3.9-4.1-2.7-6.6C178.7,168.4,181.5,167.2,184,168.2z M181.6,174.5c0.9,0.3,1.8,0,2.2-0.9c0.3-0.9,0-1.8-0.9-2.2c-0.9-0.3-1.8,0-2.2,0.9C180.2,173.1,180.7,174.1,181.6,174.5z" /></g>'
            );
    }

    /// @dev Eyebrow N°9 => Tomoe Red
    function item_9() public pure returns (string memory) {
        return
            base(
                '<g display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M218.6,168c0,0,5-3.3,13.4,0.9c0,0-4-0.5-6.8,1.4" /><path fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M218.8,167.8c-2.6,1-3.9,4.1-2.7,6.6c1,2.6,4.1,3.9,6.6,2.7c2.6-1,3.9-4.1,2.7-6.6C224.3,168.1,221.4,166.8,218.8,167.8z M221.4,174.1c-0.9,0.3-1.8,0-2.2-0.9c-0.3-0.9,0-1.8,0.9-2.2c0.9-0.3,1.8,0,2.2,0.9C222.7,172.7,222.2,173.7,221.4,174.1z" /></g><g display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M184.4,168.4c0,0-5-3.3-13.4,0.9c0,0,4-0.5,6.8,1.4" /><path fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M184,168.2c2.6,1,3.9,4.1,2.7,6.6c-1,2.6-4.1,3.9-6.6,2.7c-2.6-1-3.9-4.1-2.7-6.6C178.7,168.4,181.5,167.2,184,168.2z M181.6,174.5c0.9,0.3,1.8,0,2.2-0.9c0.3-0.9,0-1.8-0.9-2.2c-0.9-0.3-1.8,0-2.2,0.9C180.2,173.1,180.7,174.1,181.6,174.5z" /></g>'
            );
    }

    /// @dev Eyebrow N°10 => Yokai Black
    function item_10() public pure returns (string memory) {
        return
            base(
                '<circle display="inline" fill-rule="evenodd" clip-rule="evenodd" cx="184.1" cy="170" r="5.5"  /><circle display="inline" fill-rule="evenodd" clip-rule="evenodd" cx="217" cy="169.8" r="5.5"  />'
            );
    }

    /// @dev Eyebrow N°11 => Yokai Red
    function item_11() public pure returns (string memory) {
        return
            base(
                '<circle display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" cx="184.1" cy="170" r="5.5"  /><circle display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" cx="217" cy="169.8" r="5.5"  />'
            );
    }

    /// @dev Eyebrow N°12 => Elektirc Black
    function item_12() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill-rule="evenodd" clip-rule="evenodd" d="M216,176.7c14.2-2.2,47-5.6,50.4-6.6l-14.8-0.7l17.4-9.1c-17.8,7.7-37.5,12.9-56.3,13.3C213.1,174.8,214.6,176.1,216,176.7z"  /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" d="M186.7,176.7c-12.8-2.1-44.8-5.3-48-6.3l13.5-0.9l-15.4-8.8c15.9,7.4,33.7,11.9,49,13.2C186.1,175.2,186.5,175.5,186.7,176.7z"  />'
            );
    }

    /// @dev Eyebrow N°13 => Elektirc Red
    function item_13() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M216,176.7c14.2-2.2,47-5.6,50.4-6.6l-13.2-0.1l16.5-7.8c-17.8,7.7-38.2,11.1-57,11.5C213.1,174.8,214.6,176.1,216,176.7z"  /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M186.7,176.7c-12.8-2.1-44.8-5.3-48-6.3l13.1-0.3l-14.5-8c15.9,7.4,33.2,10.5,48.5,11.8C186.1,175.2,186.5,175.5,186.7,176.7z"  />'
            );
    }

    /// @dev Eyebrow N°14 => None
    function item_14() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill-rule="evenodd" clip-rule="evenodd" stroke="#000000" stroke-miterlimit="10" d="M218,171.4c0,0,21.5-3.6,27.2-3.4c5.7,0.2,9.8,1.7,12.5,3.5c0,0-20.2,2.9-29.2,3.2C219.6,175.1,219.3,174.8,218,171.4z"  /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" stroke="#000000" stroke-miterlimit="10" d="M183.1,171.4c0,0-20.9-3.8-26.6-3.5c-5.6,0.2-9.5,1.6-12.2,3.5c0,0,19.7,2.9,28.6,3.3C181.5,175.1,182.1,174.8,183.1,171.4z"  />'
            );
    }

    /// @dev Eyebrow N°15 => Thick Black
    function item_15() public pure returns (string memory) {
        return
            base(
                '<g id="Thick_00000034065405389550055010000004678079468456727472_" display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" d="M213.7,173.6c-0.6-1.4,0.1-3.1,1.6-3.5c1.7-0.5,4.3-1.2,7.5-1.7c1.5-0.3,13.2-4.2,14.4-4.9c0.2,0.9-6.2,4.1-4.9,3.9c7.3-1.2,14.7-2.2,18.1-2c3.6,0.1,6.4,0.4,9,1.2c0.6,0.2,5.3,1.1,5.9,1.4c0.4,0.2-3-0.1-2.6,0.1c1.9,0.9,3.6,1.9,5.1,3c0,0-28,4.7-40.5,5.3C217.3,176.8,215,176.6,213.7,173.6z" /></g><g id="Thick_00000125587044692851829290000013495242096532435126_" display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" d="M188.8,173.7c0.6-1.4-0.1-3.1-1.6-3.5c-6.4-1.9-9.2-2-7.5-1.7c-1.5-0.3-12.8-4.7-14.1-5.3c-0.2,0.9,5.8,4.6,4.6,4.4c-7.3-1.2-14.7-2.2-18.1-2c-3.6,0.1-6.4,0.4-9,1.2c-0.6,0.2-5.3,1.1-5.9,1.4c-0.4,0.2,3-0.1,2.6,0.1c-1.9,0.9-3.6,1.9-5.1,3c0,0,28,4.7,40.5,5.3C185.2,176.9,187.5,176.7,188.8,173.7z" /></g>'
            );
    }

    /// @dev Eyebrow N°16 => Thick Red
    function item_16() public pure returns (string memory) {
        return
            base(
                '<g id="Thick_00000036940021129486228580000008899791100473921960_" display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M213.7,173.6c-0.6-1.4,0.1-3.1,1.6-3.5c1.7-0.5,4.3-1.2,7.5-1.7c1.5-0.3,13.2-4.2,14.4-4.9c0.2,0.9-6.2,4.1-4.9,3.9c7.3-1.2,14.7-2.2,18.1-2c3.6,0.1,6.4,0.4,9,1.2c0.6,0.2,5.3,1.1,5.9,1.4c0.4,0.2-3-0.1-2.6,0.1c1.9,0.9,3.6,1.9,5.1,3c0,0-28,4.7-40.5,5.3C217.3,176.8,215,176.6,213.7,173.6z" /></g><g id="Thick_00000131358182882182447080000001261767537744457098_" display="inline" ><path fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M188.8,173.7c0.6-1.4-0.1-3.1-1.6-3.5c-6.4-1.9-9.2-2-7.5-1.7c-1.5-0.3-12.8-4.7-14.1-5.3c-0.2,0.9,5.8,4.6,4.6,4.4c-7.3-1.2-14.7-2.2-18.1-2c-3.6,0.1-6.4,0.4-9,1.2c-0.6,0.2-5.3,1.1-5.9,1.4c-0.4,0.2,3-0.1,2.6,0.1c-1.9,0.9-3.6,1.9-5.1,3c0,0,28,4.7,40.5,5.3C185.2,176.9,187.5,176.7,188.8,173.7z" /></g>'
            );
    }

    /// @dev Eyebrow N°17 => Shaved
    function item_17() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill-rule="evenodd" clip-rule="evenodd" stroke="#000000" stroke-miterlimit="10" d="M218,171.4c0,0,21.5-3.6,27.2-3.4c5.7,0.2,9.8,1.7,12.5,3.5c0,0-20.2,2.9-29.2,3.2C219.6,175.1,219.3,174.8,218,171.4z"  /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" stroke="#000000" stroke-miterlimit="10" d="M183.1,171.4c0,0-20.9-3.8-26.6-3.5c-5.6,0.2-9.5,1.6-12.2,3.5c0,0,19.7,2.9,28.6,3.3C181.5,175.1,182.1,174.8,183.1,171.4z"  />'
            );
    }

    /// @dev Eyebrow N°18 => Slayer Black
    function item_18() public pure returns (string memory) {
        return
            base(
                '<path display="inline" d="M215.3,168.6c-0.8,1.5-4.8,12.6,9.4,9.9c0,0,9.6-4.5,12.5-8.1c0,0-6.7,0.6-8.1,1.5c0,0,7.2-3.2,8.5-6.7c0,0-11.4,2.1-12,3.9c0,0,2.7-4.7,4.2-5.3s-7.6,1.4-8.5,3.5c-0.9,2.2,0.5-5.6,2.1-6.1C225,160.7,218.2,163,215.3,168.6z"  /><path display="inline" d="M187.6,168.5c0.8,1.5,4.8,12.6-9.4,9.9c0,0-9.6-4.5-12.5-8.1c0,0,6.7,0.6,8.1,1.5c0,0-7.2-3.2-8.5-6.7c0,0,11.4,2.1,12,3.9c0,0-2.7-4.7-4.2-5.3s7.6,1.4,8.5,3.5c0.9,2.2-0.5-5.6-2.1-6.1C177.9,160.7,184.9,162.9,187.6,168.5z"  />'
            );
    }

    /// @dev Eyebrow N°19 => Slayer Red
    function item_19() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill="#B50D5E" d="M215.3,168.6c-0.8,1.5-4.8,12.6,9.4,9.9c0,0,9.6-4.5,12.5-8.1c0,0-6.7,0.6-8.1,1.5c0,0,7.2-3.2,8.5-6.7c0,0-11.4,2.1-12,3.9c0,0,2.7-4.7,4.2-5.3s-7.6,1.4-8.5,3.5c-0.9,2.2,0.5-5.6,2.1-6.1C225,160.7,218.2,163,215.3,168.6z"  /><path display="inline" fill="#B50D5E" d="M187.6,168.5c0.8,1.5,4.8,12.6-9.4,9.9c0,0-9.6-4.5-12.5-8.1c0,0,6.7,0.6,8.1,1.5c0,0-7.2-3.2-8.5-6.7c0,0,11.4,2.1,12,3.9c0,0-2.7-4.7-4.2-5.3s7.6,1.4,8.5,3.5c0.9,2.2-0.5-5.6-2.1-6.1C177.9,160.7,184.9,162.9,187.6,168.5z"  />'
            );
    }

    /// @dev Eyebrow N°20 => Kitsune Kuro
    function item_20() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill-rule="evenodd" clip-rule="evenodd" d="M238.5,168c-12-4.8-18.9-2.4-21.3-1.2c-0.1,0-0.2,0.1-0.3,0.2c-0.3,0.1-0.5,0.3-0.6,0.3l0,0l0,0l0,0c-1,0.7-1.7,1.9-1.9,3.2c-0.4,2.7,1.5,5.1,4.3,5.5s5.1-1.5,5.5-4.3c0.1-0.3,0.1-0.6,0.1-1C229.2,167,238.5,168,238.5,168z"  /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" d="M162.5,167.4c12.2-4.2,19-1.5,21.3-0.2c0.1,0,0.2,0.1,0.3,0.2c0.3,0.1,0.5,0.3,0.6,0.4l0,0l0,0l0,0c0.9,0.8,1.6,2,1.7,3.3c0.2,2.7-1.8,5.1-4.5,5.3s-5.1-1.8-5.3-4.5c-0.1-0.3,0-0.6,0-1C171.9,166.9,162.5,167.4,162.5,167.4z"  />'
            );
    }

    /// @dev Eyebrow N°21 => Kitsune Aka
    function item_21() public pure returns (string memory) {
        return
            base(
                '<path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M238.3,166.9c-12.3-3.9-19-1.1-21.3,0.2c-0.1,0-0.2,0.1-0.3,0.2c-0.3,0.1-0.5,0.4-0.6,0.4l0,0l0,0l0,0c-0.9,0.8-1.6,2-1.6,3.3c-0.2,2.7,1.9,5,4.6,5.2c2.7,0.2,5-1.9,5.2-4.6c0.1-0.3,0-0.6,0-1C228.9,166.5,238.3,166.9,238.3,166.9z"  /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M162.6,166.8c12.3-3.9,19-1,21.3,0.3c0.1,0,0.2,0.1,0.3,0.2c0.3,0.1,0.5,0.4,0.6,0.4l0,0l0,0l0,0c0.9,0.8,1.6,2,1.6,3.3c0.2,2.7-1.9,5-4.6,5.2c-2.7,0.2-5-1.9-5.2-4.6c-0.1-0.3,0-0.6,0-1C172,166.5,162.6,166.8,162.6,166.8z"  />'
            );
    }

    /// @notice Return the skin name of the given id
    /// @param id The skin Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Tomoe Gold";
        } else if (id == 2) {
            name = "Tomoe White";
        } else if (id == 3) {
            name = "Yokai White";
        } else if (id == 4) {
            name = "Elektirc White";
        } else if (id == 5) {
            name = "Thick White";
        } else if (id == 6) {
            name = "Slayer White";
        } else if (id == 7) {
            name = "Kitsune White";
        } else if (id == 8) {
            name = "Tomoe Black";
        } else if (id == 9) {
            name = "Tomoe Red";
        } else if (id == 10) {
            name = "Yokai Black";
        } else if (id == 11) {
            name = "Yokai Red";
        } else if (id == 12) {
            name = "Elektirc Black";
        } else if (id == 13) {
            name = "Elektirc Red";
        } else if (id == 14) {
            name = "None";
        } else if (id == 15) {
            name = "Thick Black";
        } else if (id == 16) {
            name = "Thick Red";
        } else if (id == 17) {
            name = "Shaved";
        } else if (id == 18) {
            name = "Slayer Black";
        } else if (id == 19) {
            name = "Slayer Red";
        } else if (id == 20) {
            name = "Kitsune Kuro";
        } else if (id == 21) {
            name = "Kitsune Aka";
        }
    }

    /// @dev The base SVG for the body
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="eyebrow">', children, "</g>"));
    }
}
