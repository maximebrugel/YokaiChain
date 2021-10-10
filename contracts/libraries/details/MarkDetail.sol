// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";

/// @title Mark SVG generator
library MarkDetail {
    /// @dev Mark N°1 => Kin Moon
    function item_1() public pure returns (string memory) {
        return
            '<stop offset="0" style="stop-color:#FFB451" xmlns="http://www.w3.org/2000/svg" /><stop offset="0.5259" style="stop-color:#F7EC94" xmlns="http://www.w3.org/2000/svg" /><stop offset="1" style="stop-color:#FF9121" xmlns="http://www.w3.org/2000/svg" />';
    }

    /// @dev Mark N°2 => Kin Moon
    function item_2() public pure returns (string memory) {
        return "";
    }

    /// @dev Mark N°3 => TORI
    function item_3() public pure returns (string memory) {
        return
            '<line display="inline" fill="none" stroke="#000000" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" x1="234.4" y1="209.2" x2="234.4" y2="216.3" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill="none" stroke="#000000" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M231.8,208.8c0,0,3.3,0.4,5.7,0.2" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill="none" stroke="#000000" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M240.9,209.2c0,0-3.6,3.2,0,6.6S245.9,209.2,240.9,209.2z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill="none" stroke="#000000" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M246.9,215.7l-1.3-6.7c0,0,9.1-2.1,1,2.9l3.3,3.1" xmlns="http://www.w3.org/2000/svg" /><line display="inline" fill="none" stroke="#000000" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" x1="252.4" y1="208.6" x2="252.4" y2="215.4" xmlns="http://www.w3.org/2000/svg" /><path display="inline" d="M258.4,213.8L258.4,213.8c0.1,0,0.2,0,0.2-0.1l1.4-2.3c0.5-0.9-0.2-2.3-1.3-2.1c-0.6,0.1-0.8,0.7-0.9,0.8c-0.1-0.1-0.5-0.5-1.1-0.4c-1,0.2-1.4,1.8-0.4,2.4L258.4,213.8z" xmlns="http://www.w3.org/2000/svg" />';
    }

    /// @dev Mark N°4 => Fantom
    function item_4() public pure returns (string memory) {
        return
            '<g id="rounded-copy" display="inline" xmlns="http://www.w3.org/2000/svg"><path id="Rectangle" fill="none" stroke="#B50D5E" stroke-width="2" d="M196.4,126l7.8,4.1c0.6,0.3,0.6,0.8,0,1.1l-7.8,4.1c-0.6,0.3-1.5,0.3-2.1,0l-7.8-4.1c-0.6-0.3-0.6-0.8,0-1.1l7.8-4.1C194.9,125.7,195.9,125.7,196.4,126z" /><path id="Rectangle-Copy" fill="none" stroke="#B50D5E" stroke-width="2" d="M196.4,136.1l7.8,4.1c0.6,0.3,0.6,0.8,0,1.1l-7.8,4.1c-0.6,0.3-1.5,0.3-2.1,0l-7.8-4.1c-0.6-0.3-0.6-0.8,0-1.1l7.8-4.1C194.9,135.8,195.9,135.8,196.4,136.1z" /><g id="Rectangle_00000037684157065402114730000001279879927719506092_"></g><path id="Rectangle-Copy-2" fill="none" stroke="#B50D5E" stroke-width="2" d="M196.4,146.6l7.8,4.1c0.6,0.3,0.6,0.8,0,1.1l-7.8,4.1c-0.6,0.3-1.5,0.3-2.1,0l-7.8-4.1c-0.6-0.3-0.6-0.8,0-1.1l7.8-4.1C194.9,146.3,195.9,146.3,196.4,146.6z" /><path id="Path-11" fill="none" stroke="#B50D5E" stroke-width="2" d="M205.6,127.1c1.5,0.9,2.3,1.3,2.3,3.6" /><path id="Path-11-Copy" fill="none" stroke="#B50D5E" stroke-width="2" d="M185,154.5c-1.5-0.9-2.3-1.3-2.3-3.6" /><line id="Line-2" fill="none" stroke="#B50D5E" stroke-width="2" stroke-linecap="square" x1="186" y1="151.2" x2="186" y2="130.8" /><line id="Line-2-Copy" fill="none" stroke="#B50D5E" stroke-width="2" stroke-linecap="square" x1="204.8" y1="151.2" x2="204.8" y2="130.8" /><line id="Line-2-Copy-2" fill="none" stroke="#B50D5E" stroke-width="2" stroke-linecap="square" x1="195.4" y1="145.4" x2="195.4" y2="135.9" /></g>';
    }

    /// @dev Mark N°5 => Cheeks
    function item_5() public pure returns (string memory) {
        return
            '<g display="inline" xmlns="http://www.w3.org/2000/svg"><path fill="#FFEDED" d="M173.8,217.3c-8.6,0.4-17,0.3-25-0.3c-0.4,0-0.8-0.4-0.8-0.8v-3c0-0.4,0.4-0.8,0.8-0.8c7.7,0.7,16.2,0.8,25,0.3c0.4,0,0.8,0.4,0.8,0.8v3C174.5,216.9,174.2,217.3,173.8,217.3z" /><path fill="#FFEDED" d="M173.5,225.6c-8.6,0.4-17,0.3-25-0.3c-0.4,0-0.8-0.4-0.8-0.8v-3c0-0.4,0.4-0.8,0.8-0.8c7.7,0.7,16.2,0.8,25,0.3c0.4,0,0.8,0.4,0.8,0.8v3C174.3,225.3,174,225.6,173.5,225.6z" /></g><g display="inline" xmlns="http://www.w3.org/2000/svg"><path fill="#FFEDED" d="M253.8,217.5c-8.6,0.6-17,0.7-25,0.2c-0.4,0-0.8-0.3-0.8-0.8v-3c0-0.4,0.3-0.8,0.8-0.8c7.7,0.5,16.2,0.4,25-0.2c0.4,0,0.8,0.3,0.8,0.8v3C254.7,217.1,254.4,217.5,253.8,217.5z" /><path fill="#FFEDED" d="M253.8,225.9c-8.6,0.6-17,0.7-25,0.2c-0.4,0-0.8-0.3-0.8-0.8v-3c0-0.4,0.3-0.8,0.8-0.8c7.7,0.5,16.2,0.4,25-0.2c0.4,0,0.8,0.3,0.8,0.8v3C254.5,225.5,254.2,225.9,253.8,225.9z" /></g>';
    }

    /// @dev Mark N°6 => Akuma White
    function item_6() public pure returns (string memory) {
        return
            '<g id="Eye_Mark_00000034091419957960051340000007650225927121068221_" display="inline" xmlns="http://www.w3.org/2000/svg"><g><path fill="#FFEDED" d="M238.6,224c0-3.6,2.6-85.2,2.8-88.9c0.1-3.6-1.8-24.7-1.6-28.3c5.6-6.5,15.5-32.8,20.1-32.6c-4.6,2.3-12.5,28.8-15.7,32.6l-0.2,31.1c0.1,3.6-2.4,82.5-2.2,86.2c-0.4,0.4-1.3,1.7-1.6,2.2C239.7,225.4,238.6,224,238.6,224z" /></g></g><g id="Eye_Mark_00000161610524051233701840000007265649441665785232_" display="inline" xmlns="http://www.w3.org/2000/svg"><g><path fill="#FFEDED" d="M160.2,222.8c-0.1-3.6,0.1-88.4,0.2-92c0-3.6,1.8-21.8,2-25.4c5.5-6.6,13.7-35,18.2-34.9c-5.3,2-11.6,33.3-14.7,37.3l-2.8,25.6c0.2,3.6,0,85.7,0.3,89.3l-1.7,3.1L160.2,222.8z" /></g></g>';
    }

    /// @dev Mark N°7 => Moon White
    function item_7() public pure returns (string memory) {
        return "";
    }

    /// @dev Mark N°8 => Double Scar
    function item_8() public pure returns (string memory) {
        return
            '<path id="Scar" display="inline" fill="#FF7478" d="M239.9,133.5c0,0-7.5,51,0.2,101.2C240.1,234.7,248.8,188.3,239.9,133.5z" xmlns="http://www.w3.org/2000/svg" /><path id="Scar_00000004533207604881262600000012666582110178774184_" display="inline" fill="#FF7478" d="M163.7,135.1c0,0-6.9,51.1,1.6,101.2C165.2,236.2,173.1,189.8,163.7,135.1z" xmlns="http://www.w3.org/2000/svg" />';
    }

    /// @dev Mark N°9 => YinYang
    function item_9() public pure returns (string memory) {
        return "";
    }

    /// @dev Mark N°10 => Cheeks
    function item_10() public pure returns (string memory) {
        return
            '<g display="inline" xmlns="http://www.w3.org/2000/svg"><path fill="#E31466" d="M175.8,215.3c-8.6,0.4-17,0.3-25-0.3c-0.4,0-0.8-0.4-0.8-0.8v-3c0-0.4,0.4-0.8,0.8-0.8c7.7,0.7,16.2,0.8,25,0.3c0.4,0,0.8,0.4,0.8,0.8v3C176.5,214.9,176.2,215.3,175.8,215.3z" /><path fill="#E31466" d="M175.5,223.6c-8.6,0.4-17,0.3-25-0.3c-0.4,0-0.8-0.4-0.8-0.8v-3c0-0.4,0.4-0.8,0.8-0.8c7.7,0.7,16.2,0.8,25,0.3c0.4,0,0.8,0.4,0.8,0.8v3C176.3,223.3,176,223.6,175.5,223.6z" /></g><g display="inline" xmlns="http://www.w3.org/2000/svg"><path fill="#E31466" d="M255.8,215.5c-8.6,0.6-17,0.7-25,0.2c-0.4,0-0.8-0.3-0.8-0.8v-3c0-0.4,0.3-0.8,0.8-0.8c7.7,0.5,16.2,0.4,25-0.2c0.4,0,0.8,0.3,0.8,0.8v3C256.7,215.1,256.4,215.5,255.8,215.5z" /><path fill="#E31466" d="M255.8,223.9c-8.6,0.6-17,0.7-25,0.2c-0.4,0-0.8-0.3-0.8-0.8v-3c0-0.4,0.3-0.8,0.8-0.8c7.7,0.5,16.2,0.4,25-0.2c0.4,0,0.8,0.3,0.8,0.8v3C256.5,223.5,256.2,223.9,255.8,223.9z" /></g>';
    }

    /// @dev Mark N°11 => Kitsune
    function item_11() public pure returns (string memory) {
        return
            '<g display="inline" xmlns="http://www.w3.org/2000/svg"><g><path fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M264,242c0,0-11.8-5.9-30.5-6.8" /><path fill="#B50D5E" d="M264,242c-1.3-0.4-2.5-0.9-3.8-1.3c-1.3-0.4-2.5-0.8-3.8-1.1c-2.5-0.7-5-1.4-7.6-1.9c-2.5-0.5-5.1-1-7.7-1.5c-2.6-0.4-5.2-0.7-7.8-1c1.4,0,2.6,0,4,0c1.4,0.1,2.6,0.1,4,0.3c2.6,0.2,5.2,0.7,7.8,1.1c2.6,0.5,5.1,1.3,7.6,2.1C259.4,239.7,261.9,240.6,264,242z" /></g><g><path fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M267.1,232.8c0,0-11.8-5.9-30.5-6.8" /><path fill="#B50D5E" d="M267.1,232.8c-1.3-0.4-2.5-0.9-3.8-1.3c-1.3-0.4-2.5-0.8-3.8-1.1c-2.5-0.7-5-1.4-7.6-1.9c-2.5-0.5-5.1-1-7.7-1.5s-5.2-0.7-7.8-1c1.4,0,2.6,0,4,0c1.4,0.1,2.6,0.1,4,0.3c2.6,0.2,5.2,0.7,7.8,1.1c2.6,0.5,5.1,1.3,7.6,2.1C262.4,230.5,264.9,231.5,267.1,232.8z" /></g><g><path fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M268.1,223.4c0,0-11.8-5.9-30.5-6.8" /><path fill="#B50D5E" d="M268.1,223.4c-1.3-0.4-2.5-0.9-3.8-1.3c-1.3-0.4-2.5-0.8-3.8-1.1c-2.5-0.7-5-1.4-7.6-1.9c-2.5-0.5-5.1-1-7.7-1.5c-2.6-0.4-5.2-0.7-7.8-1c1.4,0,2.6,0,4,0c1.4,0.1,2.6,0.1,4,0.3c2.6,0.2,5.2,0.7,7.8,1.1c2.6,0.5,5.1,1.3,7.6,2.1C263.4,221.1,265.9,222.1,268.1,223.4z" /></g></g><g display="inline" xmlns="http://www.w3.org/2000/svg"><g><path fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M142.9,223c0,0,11-5.7,28.8-6.5" /><path fill="#B50D5E" d="M142.9,223c2.1-1.3,4.5-2.2,6.8-3s4.8-1.5,7.2-2.1c2.4-0.5,4.9-0.9,7.4-1.1c1.3-0.1,2.5-0.2,3.8-0.2s2.5,0,3.8,0c-2.5,0.3-4.9,0.6-7.3,1s-4.8,0.8-7.3,1.4c-2.4,0.5-4.8,1.1-7.2,1.8c-1.1,0.3-2.4,0.7-3.5,1C145.2,222.2,144.1,222.6,142.9,223z" /></g><g><path fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M148.1,241.8c0,0,11-5.7,28.8-6.5" /><path fill="#B50D5E" d="M148.1,241.8c2.1-1.3,4.5-2.2,6.8-3s4.8-1.5,7.2-2.1c2.4-0.5,4.9-0.9,7.4-1.1c1.3-0.1,2.5-0.2,3.8-0.2s2.5,0,3.8,0c-2.5,0.3-4.9,0.6-7.3,1s-4.8,0.8-7.3,1.4c-2.4,0.5-4.8,1.1-7.2,1.8c-1.1,0.3-2.4,0.7-3.5,1C150.4,240.9,149.3,241.4,148.1,241.8z" /></g><g><path fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M145.1,232.6c0,0,11-5.7,28.8-6.5" /><path fill="#B50D5E" d="M145.1,232.6c2.1-1.3,4.5-2.2,6.8-3s4.8-1.5,7.2-2.1c2.4-0.5,4.9-0.9,7.4-1.1c1.3-0.1,2.5-0.2,3.8-0.2s2.5,0,3.8,0c-2.5,0.3-4.9,0.6-7.3,1c-2.4,0.4-4.8,0.8-7.3,1.4c-2.4,0.5-4.8,1.1-7.2,1.8c-1.1,0.3-2.4,0.7-3.5,1C147.4,231.8,146.3,232.2,145.1,232.6z" /></g></g>';
    }

    /// @dev Mark N°12 => Tomoe White
    function item_12() public pure returns (string memory) {
        return
            '<path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M289,339.8L289,339.8c-1.9-1.8-5-1.8-6.9,0c-2,1.9-2.1,5.1-0.2,7.1s5.1,2.1,7.1,0.2c0.1-0.1,0.3-0.3,0.4-0.4v0.1c2.7,1.9,3.6,5.8,3.6,5.8C293.9,343.3,289,339.8,289,339.8z M286.8,344.8c-0.7,0.6-1.7,0.6-2.4-0.1c-0.6-0.6-0.6-1.8,0.1-2.4s1.8-0.6,2.4,0.1C287.5,343,287.5,344.2,286.8,344.8z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M275.1,347.9C275.1,347.9,275.1,347.8,275.1,347.9c-1.1-2.6-4.2-3.7-6.7-2.6s-3.6,4.2-2.5,6.7s4.2,3.6,6.7,2.5c0.1-0.1,0.2-0.1,0.4-0.2c1.8,2.7,1.5,6.6,1.5,6.6C277.8,353.8,275.8,349.2,275.1,347.9z M271.2,351.4c-0.9,0.4-1.9,0-2.2-0.8c-0.4-0.8,0-1.9,0.8-2.2c0.8-0.4,1.9,0,2.2,0.8C272.4,350,272,351.1,271.2,351.4z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M136.6,339.1c-1.9-1.8-5-1.8-6.9,0l0,0c0,0-4.9,3.5-4,12.8c0,0,0.9-3.9,3.6-5.8V346c0.1,0.1,0.2,0.3,0.4,0.4c2,1.9,5.2,1.8,7.1-0.2C138.7,344.2,138.6,341,136.6,339.1z M134.4,344c-0.8,0.6-1.8,0.6-2.4,0.1c-0.7-0.6-0.7-1.8-0.1-2.4c0.6-0.7,1.8-0.7,2.4-0.1C135,342.2,135,343.4,134.4,344z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M150.5,344.6c-2.5-1.1-5.6,0-6.7,2.5c0,0.1-0.1,0.1-0.1,0.2c-0.7,1.4-2.5,6,0.7,12.9c0,0-0.3-3.9,1.5-6.6c0.1,0.1,0.2,0.1,0.4,0.2c2.5,1.1,5.6,0,6.7-2.5C154.1,348.8,153,345.7,150.5,344.6z M149.8,349.9c-0.3,0.9-1.4,1.1-2.2,0.8c-0.8-0.3-1.2-1.4-0.8-2.2c0.3-0.8,1.4-1.2,2.2-0.8C149.8,348,150.2,349.1,149.8,349.9z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M226.6,355.4c-1-2.5-3.9-3.8-6.4-2.9c-2.6,0.9-4,3.9-3,6.5c0.9,2.6,3.9,4,6.5,3c0.1-0.1,0.3-0.1,0.4-0.2c1.6,2.9,1,6.8,1,6.8C229.4,360.9,227,356,226.6,355.4z M222.6,358.9c-0.9,0.2-1.7-0.2-2.2-1c-0.3-0.8,0.1-1.9,1-2.2c0.8-0.3,1.9,0.1,2.2,1C223.9,357.5,223.5,358.6,222.6,358.9z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFEDED" d="M190.2,351.9c-2.4-1.1-5.4,0-6.5,2.5l0,0c0,0-3.3,5,0.8,13.4c0,0-0.4-4,1.4-6.8l0,0c0.1,0.1,0.3,0.2,0.4,0.2c2.5,1.1,5.6-0.1,6.6-2.7C194,356,192.8,352.9,190.2,351.9z M189.6,357.2c-0.2,1-1.2,1.3-2.2,0.9c-0.9-0.3-1.2-1.4-0.9-2.2c0.3-0.9,1.4-1.2,2.2-0.9C189.6,355.3,189.9,356.4,189.6,357.2z" xmlns="http://www.w3.org/2000/svg" />';
    }

    /// @dev Mark N°13 => Chin Spiral
    function item_13() public pure returns (string memory) {
        return
            '<path display="inline" d="M203.4,279.3c0.2-0.6,0.4-1.4,1-1.9c0.3-0.2,0.7-0.4,1.1-0.3c0.4,0.1,0.7,0.4,0.9,0.7c0.4,0.6,0.5,1.5,0.5,2.2s-0.3,1.6-0.8,2.1c-0.5,0.6-1.4,0.9-2.2,0.8s-1.6-0.5-2.1-0.9c-0.6-0.4-1.1-1-1.6-1.7c-0.4-0.6-0.6-1.5-0.6-2.3c0.2-1.7,1.5-2.9,2.8-3.5c1.4-0.6,2.9-0.8,4.4-0.5c0.7,0.1,1.5,0.4,2.1,0.9s0.9,1.3,1,2c0.2,1.5-0.2,3-1.3,4.1c0.7-1.1,1-2.6,0.7-4c-0.2-0.6-0.5-1.3-1-1.6c-0.5-0.4-1.1-0.6-1.8-0.6c-1.4-0.1-2.7,0-3.9,0.6c-1.1,0.5-2.1,1.6-2.2,2.7c-0.1,1.1,0.7,2.3,1.7,3.1c0.5,0.4,1,0.8,1.6,0.8c0.5,0.1,1.1-0.1,1.6-0.5c0.4-0.4,0.7-0.9,0.7-1.7c0.1-0.6,0-1.4-0.3-1.9c-0.1-0.3-0.4-0.5-0.6-0.6c-0.3-0.1-0.6,0-0.8,0.1C204,278,203.5,278.7,203.4,279.3z" xmlns="http://www.w3.org/2000/svg" />';
    }

    /// @dev Mark N°14 => Scar
    function item_14() public pure returns (string memory) {
        return "";
    }

    /// @dev Mark N°15 => Dark circle
    function item_15() public pure returns (string memory) {
        return
            '<g display="inline" xmlns="http://www.w3.org/2000/svg"><path d="M163,210.9c4.8,0.2,9.5-1.4,13.9-3.3C173,210.4,167.7,211.7,163,210.9z" /><path d="M159,210.1c-2.4-0.4-4.7-1.7-6.7-3.1C154.5,207.9,156.8,209,159,210.1z" /></g><g display="inline" xmlns="http://www.w3.org/2000/svg"><path d="M236.6,210.4c5.3,0.1,10.5-1.5,15.3-3.5C247.8,209.8,241.9,211.1,236.6,210.4z" /><path d="M232.1,209.6c-2.7-0.4-5.2-1.6-7.3-3C227.3,207.5,229.8,208.6,232.1,209.6z" /></g>';
    }

    /// @dev Mark N°16 => Blood Moon
    function item_16() public pure returns (string memory) {
        return
            '<path display="inline" fill="#B50D5E" d="M218.2,146.2c0.2-6-2.7-11.5-7.2-14.7c2.3,2.5,3.8,5.7,3.6,9.4c-0.2,7.4-6.5,13.2-14.2,13s-13.7-6.4-13.5-13.8c0.1-3.5,1.7-6.9,4.1-9.2c-4.7,3.1-7.8,8.3-8,14.3c-0.2,9.7,7.5,17.8,17.2,18C209.7,163.6,217.9,156,218.2,146.2z" xmlns="http://www.w3.org/2000/svg" />';
    }

    /// @dev Mark N°17 => Blood Full Moon
    function item_17() public pure returns (string memory) {
        return
            '<ellipse display="inline" fill="#B50D5E" cx="200.9" cy="146.5" rx="13.4" ry="13.4" xmlns="http://www.w3.org/2000/svg" />';
    }

    /// @dev Mark N°18 => Lunar Akuma
    function item_18() public pure returns (string memory) {
        return
            '<g id="Eye_Mark_00000175285842010430468260000007389249013439804862_" display="inline" xmlns="http://www.w3.org/2000/svg"><g><path d="M238.6,224c0-3.6,2.6-85.2,2.8-88.9c0.1-3.6-1.8-24.7-1.6-28.3c5.6-6.5,15.5-32.8,20.1-32.6c-4.6,2.3-12.5,28.8-15.7,32.6l-0.2,31.1c0.1,3.6-2.4,82.5-2.2,86.2c-0.4,0.4-1.3,1.7-1.6,2.2C239.7,225.4,238.6,224,238.6,224z" /></g></g><g id="Eye_Mark_00000155833185527664036580000015871969909210297514_" display="inline" xmlns="http://www.w3.org/2000/svg"><g><path d="M160.6,222.7c-0.1-3.6-0.3-88.3-0.2-91.9c0-3.6,1.8-21.8,2-25.4c5.5-6.6,13.7-35,18.2-34.9c-5.3,2-11.6,33.3-14.7,37.3l-2.8,25.6c0.2,3.6,0.4,85.6,0.7,89.2l-1.7,3.1L160.6,222.7z" /></g></g>';
    }

    /// @dev Mark N°19 => Lunar Tomoe
    function item_19() public pure returns (string memory) {
        return
            '<path display="inline" fill-rule="evenodd" clip-rule="evenodd" d="M289,339.8L289,339.8c-1.9-1.8-5-1.8-6.9,0c-2,1.9-2.1,5.1-0.2,7.1s5.1,2.1,7.1,0.2c0.1-0.1,0.3-0.3,0.4-0.4v0.1c2.7,1.9,3.6,5.8,3.6,5.8C293.9,343.3,289,339.8,289,339.8z M286.8,344.8c-0.7,0.6-1.7,0.6-2.4-0.1c-0.6-0.6-0.6-1.8,0.1-2.4s1.8-0.6,2.4,0.1C287.5,343,287.5,344.2,286.8,344.8z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" d="M275.1,347.9C275.1,347.9,275.1,347.8,275.1,347.9c-1.1-2.6-4.2-3.7-6.7-2.6s-3.6,4.2-2.5,6.7s4.2,3.6,6.7,2.5c0.1-0.1,0.2-0.1,0.4-0.2c1.8,2.7,1.5,6.6,1.5,6.6C277.8,353.8,275.8,349.2,275.1,347.9z M271.2,351.4c-0.9,0.4-1.9,0-2.2-0.8c-0.4-0.8,0-1.9,0.8-2.2c0.8-0.4,1.9,0,2.2,0.8C272.4,350,272,351.1,271.2,351.4z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" d="M136.6,339.1c-1.9-1.8-5-1.8-6.9,0l0,0c0,0-4.9,3.5-4,12.8c0,0,0.9-3.9,3.6-5.8V346c0.1,0.1,0.2,0.3,0.4,0.4c2,1.9,5.2,1.8,7.1-0.2C138.7,344.2,138.6,341,136.6,339.1z M134.4,344c-0.8,0.6-1.8,0.6-2.4,0.1c-0.7-0.6-0.7-1.8-0.1-2.4c0.6-0.7,1.8-0.7,2.4-0.1C135,342.2,135,343.4,134.4,344z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" d="M150.5,344.6c-2.5-1.1-5.6,0-6.7,2.5c0,0.1-0.1,0.1-0.1,0.2c-0.7,1.4-2.5,6,0.7,12.9c0,0-0.3-3.9,1.5-6.6c0.1,0.1,0.2,0.1,0.4,0.2c2.5,1.1,5.6,0,6.7-2.5C154.1,348.8,153,345.7,150.5,344.6z M149.8,349.9c-0.3,0.9-1.4,1.1-2.2,0.8c-0.8-0.3-1.2-1.4-0.8-2.2c0.3-0.8,1.4-1.2,2.2-0.8C149.8,348,150.2,349.1,149.8,349.9z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" d="M226.6,355.4c-1-2.5-3.9-3.8-6.4-2.9c-2.6,0.9-4,3.9-3,6.5c0.9,2.6,3.9,4,6.5,3c0.1-0.1,0.3-0.1,0.4-0.2c1.6,2.9,1,6.8,1,6.8C229.4,360.9,227,356,226.6,355.4z M222.6,358.9c-0.9,0.2-1.7-0.2-2.2-1c-0.3-0.8,0.1-1.9,1-2.2c0.8-0.3,1.9,0.1,2.2,1C223.9,357.5,223.5,358.6,222.6,358.9z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" d="M190.2,351.9c-2.4-1.1-5.4,0-6.5,2.5l0,0c0,0-3.3,5,0.8,13.4c0,0-0.4-4,1.4-6.8l0,0c0.1,0.1,0.3,0.2,0.4,0.2c2.5,1.1,5.6-0.1,6.6-2.7C194,356,192.8,352.9,190.2,351.9z M189.6,357.2c-0.2,1-1.2,1.3-2.2,0.9c-0.9-0.3-1.2-1.4-0.9-2.2c0.3-0.9,1.4-1.2,2.2-0.9C189.6,355.3,189.9,356.4,189.6,357.2z" xmlns="http://www.w3.org/2000/svg" />';
    }

    /// @dev Mark N°20 => Brother
    function item_20() public pure returns (string memory) {
        return
            '<g display="inline" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M220.1,206.2c0,0,15.2,24.7,32.7,39.1" /><path d="M220.1,206.2c1.3,1.8,2.4,3.5,3.8,5.2c1.3,1.8,2.5,3.4,3.8,5.1c2.6,3.4,5.1,6.7,7.8,10c2.6,3.3,5.5,6.4,8.3,9.6c1.5,1.6,2.9,3.1,4.5,4.6c1.5,1.6,3.1,2.9,4.6,4.5c-3.4-2.6-6.6-5.4-9.6-8.3c-3-3-5.8-6.2-8.5-9.5s-5.3-6.7-7.7-10.1C224.6,213.4,222.2,209.9,220.1,206.2z" /></g><g display="inline" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M182.1,207c0,0-9.1,20.2-23.7,37.8" /><path d="M182.1,207c-1.4,3.4-3,6.9-4.7,10.1c-1.7,3.3-3.5,6.6-5.5,9.7c-2,3.1-4.1,6.3-6.3,9.3s-4.6,5.8-7.1,8.6c1-1.6,2.2-3,3.2-4.5l1.7-2.3l1.6-2.3c2.1-3.1,4.2-6.1,6-9.4c2-3.1,3.9-6.4,5.7-9.6c0.9-1.6,1.9-3.2,2.7-4.9C180.5,210.2,181.2,208.6,182.1,207z" /></g>';
    }

    /// @dev Mark N°21 => Blood Akuma
    function item_21() public pure returns (string memory) {
        return
            '<g id="Eye_Mark" display="inline" xmlns="http://www.w3.org/2000/svg"><g><path fill="#B50D5E" d="M238.6,224c0-3.6,2.6-85.2,2.8-88.9c0.1-3.6-1.8-24.7-1.6-28.3c5.6-6.5,12-33.3,16.6-33.1c-4.6,2.3-9,29.3-12.2,33.1l-0.2,31.1c0.1,3.6-2.4,82.5-2.2,86.2c-0.4,0.4-1.3,1.7-1.6,2.2C239.7,225.4,238.6,224,238.6,224z" /></g></g><g id="Eye_Mark_00000155137308979008430060000007833111226817031332_" display="inline" xmlns="http://www.w3.org/2000/svg"><g><path fill="#B50D5E" d="M161.2,222.8c-0.1-3.6,0.1-88.4,0.2-92c0-3.6,1.8-21.8,2-25.4c5.5-6.6,13.7-33.9,18.2-33.8c-5.3,2-11.6,32.2-14.7,36.2l-2.8,25.6c0.2,3.6,0,85.7,0.3,89.3l-1.7,3.1L161.2,222.8z" /></g></g>';
    }

    /// @dev Mark N°22 => Tomoe Red
    function item_22() public pure returns (string memory) {
        return
            '<path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M289,339.8L289,339.8c-1.9-1.8-5-1.8-6.9,0c-2,1.9-2.1,5.1-0.2,7.1s5.1,2.1,7.1,0.2c0.1-0.1,0.3-0.3,0.4-0.4v0.1c2.7,1.9,3.6,5.8,3.6,5.8C293.9,343.3,289,339.8,289,339.8z M286.8,344.8c-0.7,0.6-1.7,0.6-2.4-0.1c-0.6-0.6-0.6-1.8,0.1-2.4s1.8-0.6,2.4,0.1C287.5,343,287.5,344.2,286.8,344.8z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M275.1,347.9C275.1,347.9,275.1,347.8,275.1,347.9c-1.1-2.6-4.2-3.7-6.7-2.6s-3.6,4.2-2.5,6.7s4.2,3.6,6.7,2.5c0.1-0.1,0.2-0.1,0.4-0.2c1.8,2.7,1.5,6.6,1.5,6.6C277.8,353.8,275.8,349.2,275.1,347.9z M271.2,351.4c-0.9,0.4-1.9,0-2.2-0.8c-0.4-0.8,0-1.9,0.8-2.2c0.8-0.4,1.9,0,2.2,0.8C272.4,350,272,351.1,271.2,351.4z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M136.6,339.1c-1.9-1.8-5-1.8-6.9,0l0,0c0,0-4.9,3.5-4,12.8c0,0,0.9-3.9,3.6-5.8V346c0.1,0.1,0.2,0.3,0.4,0.4c2,1.9,5.2,1.8,7.1-0.2C138.7,344.2,138.6,341,136.6,339.1z M134.4,344c-0.8,0.6-1.8,0.6-2.4,0.1c-0.7-0.6-0.7-1.8-0.1-2.4c0.6-0.7,1.8-0.7,2.4-0.1C135,342.2,135,343.4,134.4,344z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M150.5,344.6c-2.5-1.1-5.6,0-6.7,2.5c0,0.1-0.1,0.1-0.1,0.2c-0.7,1.4-2.5,6,0.7,12.9c0,0-0.3-3.9,1.5-6.6c0.1,0.1,0.2,0.1,0.4,0.2c2.5,1.1,5.6,0,6.7-2.5C154.1,348.8,153,345.7,150.5,344.6z M149.8,349.9c-0.3,0.9-1.4,1.1-2.2,0.8c-0.8-0.3-1.2-1.4-0.8-2.2c0.3-0.8,1.4-1.2,2.2-0.8C149.8,348,150.2,349.1,149.8,349.9z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M226.6,355.4c-1-2.5-3.9-3.8-6.4-2.9c-2.6,0.9-4,3.9-3,6.5c0.9,2.6,3.9,4,6.5,3c0.1-0.1,0.3-0.1,0.4-0.2c1.6,2.9,1,6.8,1,6.8C229.4,360.9,227,356,226.6,355.4z M222.6,358.9c-0.9,0.2-1.7-0.2-2.2-1c-0.3-0.8,0.1-1.9,1-2.2c0.8-0.3,1.9,0.1,2.2,1C223.9,357.5,223.5,358.6,222.6,358.9z" xmlns="http://www.w3.org/2000/svg" /><path display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#B50D5E" d="M190.2,351.9c-2.4-1.1-5.4,0-6.5,2.5l0,0c0,0-3.3,5,0.8,13.4c0,0-0.4-4,1.4-6.8l0,0c0.1,0.1,0.3,0.2,0.4,0.2c2.5,1.1,5.6-0.1,6.6-2.7C194,356,192.8,352.9,190.2,351.9z M189.6,357.2c-0.2,1-1.2,1.3-2.2,0.9c-0.9-0.3-1.2-1.4-0.9-2.2c0.3-0.9,1.4-1.2,2.2-0.9C189.6,355.3,189.9,356.4,189.6,357.2z" xmlns="http://www.w3.org/2000/svg" />';
    }

    /// @notice Return the skin name of the given id
    /// @param id The skin Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Kin Moon";
        } else if (id == 2) {
            name = "Kin Moon";
        } else if (id == 3) {
            name = "TORI";
        } else if (id == 4) {
            name = "Fantom";
        } else if (id == 5) {
            name = "Cheeks";
        } else if (id == 6) {
            name = "Akuma White";
        } else if (id == 7) {
            name = "Moon White";
        } else if (id == 8) {
            name = "Double Scar";
        } else if (id == 9) {
            name = "YinYang";
        } else if (id == 10) {
            name = "Cheeks";
        } else if (id == 11) {
            name = "Kitsune";
        } else if (id == 12) {
            name = "Tomoe White";
        } else if (id == 13) {
            name = "Chin Spiral";
        } else if (id == 14) {
            name = "Scar";
        } else if (id == 15) {
            name = "Dark circle";
        } else if (id == 16) {
            name = "Blood Moon";
        } else if (id == 17) {
            name = "Blood Full Moon";
        } else if (id == 18) {
            name = "Lunar Akuma";
        } else if (id == 19) {
            name = "Lunar Tomoe";
        } else if (id == 20) {
            name = "Brother";
        } else if (id == 21) {
            name = "Blood Akuma";
        } else if (id == 22) {
            name = "Tomoe Red";
        }
    }

    /// @dev The base SVG for the body
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="mark">', children, "</g>"));
    }
}
