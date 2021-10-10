// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";

/// @title Body SVG generator
library BodyDetail {
    /// @dev Body N°1 => Kintaro
    function item_1() public pure returns (string memory) {
        return
            '<linearGradient id="Neck_00000146471314765011465210000009181920878961705873_" gradientUnits="userSpaceOnUse" x1="210.607" y1="-656.503" x2="210.607" y2="-526.4" gradientTransform="matrix(1 0 0 -1 0 -270)" xmlns="http://www.w3.org/2000/svg"><stop offset="0" style="stop-color:#FFB451" /><stop offset="0.5259" style="stop-color:#F7E394" /><stop offset="1" style="stop-color:#FF9B43" /></linearGradient><path id="Neck_00000010289851237522915360000010078416758695229569_" display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="url(#Neck_00000146471314765011465210000009181920878961705873_)" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-miterlimit="10" d="M175.8,276.8c0.8,10,1.1,20.2-0.7,30.4c-0.5,2.6-2.2,4.9-4.7,6.3c-16.4,8.9-41.4,17.2-70.2,25.2c-8.1,2.3-9.5,12.4-2.1,16.4c71.9,38.5,146.3,42.5,224.4,7c7.2-3.3,7.3-12.7,0.1-16c-22.3-10.3-43.5-23.1-54.9-29.9c-3-1.8-4.8-5.2-5.1-8.3c-0.7-7.7-0.7-12.5-0.1-22.2c0.7-11.3,2.6-21.2,4.6-29.3" xmlns="http://www.w3.org/2000/svg" /><path id="Ombre_00000051358561306504411140000018417425919478725559_" display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#696969" d="M178.1,279c0,0,24.2,35,41,30.6s41.7-21.6,41.7-21.6c1.2-9.1,1.9-17.1,3.7-26c-4.8,4.9-10.4,9.2-18.8,14.5c-11.3,7.1-22,11.3-29.8,13.3L178.1,279z" xmlns="http://www.w3.org/2000/svg" /><linearGradient id="Head_00000090974485823866736880000004889295945309633965_" gradientUnits="userSpaceOnUse" x1="222.1862" y1="-563.8279" x2="222.1862" y2="-332.9842" gradientTransform="matrix(1 0 0 -1 0 -270)" xmlns="http://www.w3.org/2000/svg"><stop offset="0" style="stop-color:#FFB451" /><stop offset="0.4231" style="stop-color:#F7E394" /><stop offset="1" style="stop-color:#FF9B43" /></linearGradient><path id="Head_00000157286646009716065750000004537618865904606645_" display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="url(#Head_00000090974485823866736880000004889295945309633965_)" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-miterlimit="10" d="M313.8,168.4c-0.6-0.8-12.2,8.3-12.2,8.3c0.3-4.9,11.8-53.1-17.3-86c-15.9-17.4-42.2-27.1-69.9-27.7c-24.5-0.5-48.7,10.9-61.6,24.4c-33.5,35-20.1,98.2-20.1,98.2c0.6,10.9,9.1,63.4,21.3,74.6c0,0,33.7,25.7,42.4,30.6c8.8,5,17.1,2.3,17.1,2.3c16-5.9,47.7-25.9,56.8-37.6l0.2-0.2c6.9-9.1,3.9-5.8,11.2-14.8c1.3-1.5,3-2.2,4.8-1.8c4.1,0.8,11.7,1.3,13.3-7c2.4-11.5,2.6-25.1,8.6-35.5C311.6,190.4,315.8,184.2,313.8,168.4z" xmlns="http://www.w3.org/2000/svg" /><linearGradient id="Ear_00000097467818612356169220000011523736791477734333_" gradientUnits="userSpaceOnUse" x1="130.4586" y1="-506.7255" x2="130.4586" y2="-441.798" gradientTransform="matrix(1 0 0 -1 0 -270)" xmlns="http://www.w3.org/2000/svg"><stop offset="0" style="stop-color:#FFB451" /><stop offset="0.5259" style="stop-color:#F7EC94" /><stop offset="1" style="stop-color:#FF9121" /></linearGradient><path id="Ear_00000096748735879045204560000014544742053344949950_" display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="url(#Ear_00000097467818612356169220000011523736791477734333_)" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-miterlimit="10" d="M141.9,236c0.1,1.1-8.3,3-9.7-12.1s-7.3-31-12.6-48c-3.8-12.2,12.2,6.7,12.2,6.7" xmlns="http://www.w3.org/2000/svg" /><g id="Ear2_00000070092659838230016240000018338060008872845995_" display="inline" xmlns="http://www.w3.org/2000/svg"><path d="M304,174.7c-0.5,1.3-1.4,2.6-2.3,3.5c-0.9,0.8-1.7,1.4-2.6,2.2c-1.8,1.7-3.9,3.2-5.5,5.2s-2.9,4.1-4.2,6.3c-0.6,1-1.3,2.2-1.9,3.3l-1.7,3.4l-0.2-0.1l1.4-3.6c0.5-1.1,0.9-2.4,1.5-3.5c1.1-2.3,2.3-4.6,3.8-6.8s3-4.4,5.1-5.9c1-0.8,2.2-1.5,3.2-2.1c1.1-0.6,2.2-1.1,3.1-2L304,174.7z" /></g><g id="Buste_00000047751326698794022350000007400930095618747290_" display="inline" xmlns="http://www.w3.org/2000/svg"><g><path fill="#2B232B" d="M222.2,339.7c4.6-0.4,9.3-0.6,13.9-0.9c4.7-0.2,9.3-0.4,14-0.6c4.7-0.1,9.3-0.3,14-0.4l7-0.1c2.3,0,4.7,0,7,0c-2.3,0.2-4.6,0.3-7,0.5l-7,0.4c-4.7,0.2-9.3,0.4-14,0.6c-4.7,0.1-9.3,0.3-14,0.4C231.6,339.7,226.9,339.8,222.2,339.7z" /></g><g><path fill="#2B232B" d="M142.3,337.2c4.3,0,8.4,0.1,12.6,0.2c4.2,0.1,8.4,0.3,12.6,0.5c4.2,0.2,8.4,0.4,12.6,0.7l6.4,0.4c2.1,0.2,4.2,0.3,6.4,0.5c-2.1,0-4.2,0-6.4-0.1l-6.4-0.2c-4.2-0.1-8.4-0.3-12.6-0.5c-4.2-0.2-8.4-0.4-12.6-0.7C150.8,338,146.7,337.6,142.3,337.2z" /></g><g><path fill="#2B232B" d="M199.3,329.2l1.6,3c0.5,1,1,2,1.6,3c0.5,0.9,1,2,1.7,2.8c0.2,0.2,0.3,0.4,0.5,0.6s0.3,0.2,0.3,0.2c0.3,0,0.8-0.3,1.3-0.6c1.8-1.3,3.4-2.8,5.1-4.3c0.8-0.7,1.7-1.6,2.5-2.3l2.5-2.3c-1.4,1.8-2.8,3.5-4.4,5.1c-1.6,1.7-3.1,3.2-5.1,4.6c-0.2,0.2-0.5,0.3-0.7,0.4c-0.3,0.1-0.5,0.3-1,0.3c-0.2,0-0.6-0.1-0.7-0.2c-0.1-0.1-0.3-0.2-0.4-0.3c-0.2-0.2-0.4-0.5-0.6-0.7c-0.6-0.9-1.1-2-1.7-3C200.9,333.5,200,331.4,199.3,329.2z" /></g><path opacity="0.19" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " d="M199.3,329.2c0,0,3.5,9.3,5.3,10.1c1.8,0.8,11.6-10,11.6-10C209.9,330.9,204,331.1,199.3,329.2z" /></g>';
    }

    /// @dev Body N°2 => Moon Yokai
    function item_2() public pure returns (string memory) {
        return
            '<path id="Neck_00000016775871756316886510000013559240307501145278_" display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#2A2C38" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-miterlimit="10" d="M175.8,276.8c0.8,10,1.1,20.2-0.7,30.4c-0.5,2.6-2.2,4.9-4.7,6.3c-16.4,8.9-41.4,17.2-70.2,25.2c-8.1,2.3-9.5,12.4-2.1,16.4c71.9,38.5,146.3,42.5,224.4,7c7.2-3.3,7.3-12.7,0.1-16c-22.3-10.3-43.5-23.1-54.9-29.9c-3-1.8-4.8-5.2-5.1-8.3c-0.7-7.7-0.7-12.5-0.1-22.2c0.7-11.3,2.6-21.2,4.6-29.3" xmlns="http://www.w3.org/2000/svg" /><path id="Ombre_00000031186616167433190020000010560584485099580815_" display="inline" opacity="0.51" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " d="M178.1,279c0,0,24.2,35,41,30.6s41.7-21.6,41.7-21.6c1.2-9.1,1.9-17.1,3.7-26c-4.8,4.9-10.4,9.2-18.8,14.5c-11.3,7.1-22,11.3-29.8,13.3L178.1,279z" xmlns="http://www.w3.org/2000/svg" /><path id="Head_00000016760019442428336720000006735334001093429644_" display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#2A2C38" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-miterlimit="10" d="M313.9,168.8c-0.6-0.8-12.2,8.3-12.2,8.3c0.3-4.9,11.8-53.1-17.3-86c-15.9-17.4-42.2-27.1-69.9-27.7c-24.5-0.5-48.7,10.9-61.6,24.4c-33.5,35-20.1,98.2-20.1,98.2c0.6,10.9,9.1,63.4,21.3,74.6c0,0,33.7,25.7,42.4,30.6c8.8,5,17.1,2.3,17.1,2.3c16-5.9,47.7-25.9,56.8-37.6l0.2-0.2c6.9-9.1,3.9-5.8,11.2-14.8c1.3-1.5,3-2.2,4.8-1.8c4.1,0.8,11.7,1.3,13.3-7c2.4-11.5,2.6-25.1,8.6-35.5C311.7,190.8,315.9,184.6,313.9,168.8z" xmlns="http://www.w3.org/2000/svg" /><path id="Ear_00000090289617272189755780000009233616355220460931_" display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#2A2C38" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-miterlimit="10" d="M141.9,236c0.1,1.1-8.3,3-9.7-12.1s-7.3-31-12.6-48c-3.8-12.2,12.2,6.7,12.2,6.7" xmlns="http://www.w3.org/2000/svg" /><g id="Ear2_00000057119354888981438970000013676749591943992728_" display="inline" xmlns="http://www.w3.org/2000/svg"><path d="M304,174.7c-0.5,1.3-0.3,2.2-1.2,3.1c-0.9,0.8-2.3,2.1-3.2,2.9c-1.8,1.7-4.4,3-6,5s-2.9,4.1-4.2,6.3c-0.6,1-1.3,2.2-1.9,3.3l-1.7,3.4l-0.2-0.1l1.4-3.6c0.5-1.1,0.9-2.4,1.5-3.5c1.1-2.3,2.3-4.6,3.8-6.8s3-4.4,5.1-5.9c1-0.8,2.2-1.5,3.2-2.1c1.1-0.6,2.2-1.1,3.1-2L304,174.7z" /></g><g id="Buste_00000094610215825033541390000015814290221904266907_" display="inline" xmlns="http://www.w3.org/2000/svg"><g><path d="M222.2,339.7c18.6-1.3,37.3-2,55.9-2C259.5,339,240.9,339.8,222.2,339.7z" /></g><g><path d="M142.3,337.2c16.9,0.1,33.7,1,50.6,2.3C176,339.2,159.3,338.5,142.3,337.2z" /></g><g><path d="M199.3,329.2c7.3,14.3,4.6,10.4,17.1,0.1C207.5,339,204.7,346.2,199.3,329.2z" /></g><path opacity="0.19" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " d="M199.3,329.2c0,0,3.5,9.3,5.3,10.1c1.8,0.8,11.6-10,11.6-10C209.9,330.9,204,331.1,199.3,329.2z" /></g>';
    }

    /// @dev Body N°3 => Blood Yokai
    function item_3() public pure returns (string memory) {
        return
            '<path id="Neck_00000089560946937038391600000016772019049243215496_" fill-rule="evenodd" clip-rule="evenodd" fill="#E31466" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-miterlimit="10" d="M175.8,276.8c0.8,10,1.1,20.2-0.7,30.4c-0.5,2.6-2.2,4.9-4.7,6.3c-16.4,8.9-41.4,17.2-70.2,25.2c-8.1,2.3-9.5,12.4-2.1,16.4c71.9,38.5,146.3,42.5,224.4,7c7.2-3.3,7.3-12.7,0.1-16c-22.3-10.3-43.5-23.1-54.9-29.9c-3-1.8-4.8-5.2-5.1-8.3c-0.7-7.7-0.7-12.5-0.1-22.2c0.7-11.3,2.6-21.2,4.6-29.3" xmlns="http://www.w3.org/2000/svg" /><path id="Ombre_00000065787204230438736890000002572274583041611146_" opacity="0.51" fill-rule="evenodd" clip-rule="evenodd" fill="#696969" enable-background="new    " d="M178.1,279c0,0,24.2,35,41,30.6s41.7-21.6,41.7-21.6c1.2-9.1,1.9-17.1,3.7-26c-4.8,4.9-10.4,9.2-18.8,14.5c-11.3,7.1-22,11.3-29.8,13.3L178.1,279z" xmlns="http://www.w3.org/2000/svg" /><path id="Head_00000130635829233795686900000013137729042233959308_" fill-rule="evenodd" clip-rule="evenodd" fill="#E31466" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-miterlimit="10" d="M313.9,168.8c-0.6-0.8-12.2,8.3-12.2,8.3c0.3-4.9,11.8-53.1-17.3-86c-15.9-17.4-42.2-27.1-69.9-27.7c-24.5-0.5-48.7,10.9-61.6,24.4c-33.5,35-20.1,98.2-20.1,98.2c0.6,10.9,9.1,63.4,21.3,74.6c0,0,33.7,25.7,42.4,30.6c8.8,5,17.1,2.3,17.1,2.3c16-5.9,47.7-25.9,56.8-37.6l0.2-0.2c6.9-9.1,3.9-5.8,11.2-14.8c1.3-1.5,3-2.2,4.8-1.8c4.1,0.8,11.7,1.3,13.3-7c2.4-11.5,2.6-25.1,8.6-35.5C311.7,190.8,315.9,184.6,313.9,168.8z" xmlns="http://www.w3.org/2000/svg" /><path id="Ear_00000039104363298531601210000014049839439821675907_" fill-rule="evenodd" clip-rule="evenodd" fill="#E31466" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-miterlimit="10" d="M141.9,236c0.1,1.1-8.3,3-9.7-12.1s-7.3-31-12.6-48c-3.8-12.2,12.2,6.7,12.2,6.7" xmlns="http://www.w3.org/2000/svg" /><g id="Ear2_00000080195034291255315720000004565286681794651554_" xmlns="http://www.w3.org/2000/svg"><path d="M304.2,175.2c-0.5,1.3-1.4,2.6-2.3,3.5c-0.9,0.8-1.7,1.4-2.6,2.2c-1.8,1.7-3.9,3.2-5.5,5.2s-2.9,4.1-4.2,6.3c-0.6,1-1.3,2.2-1.9,3.3l-1.7,3.4l-0.2-0.1l1.4-3.6c0.5-1.1,0.9-2.4,1.5-3.5c1.1-2.3,2.3-4.6,3.8-6.8s3-4.4,5.1-5.9c1-0.8,2.2-1.5,3.2-2.1c1.1-0.6,2.2-1.1,3.1-2L304.2,175.2z" /></g><g id="Buste_00000145032826457099490250000009180861767325815738_" xmlns="http://www.w3.org/2000/svg"><g><path fill="#2B232B" d="M222.2,339.7c4.6-0.4,9.3-0.6,13.9-0.9c4.7-0.2,9.3-0.4,14-0.6c4.7-0.1,9.3-0.3,14-0.4l7-0.1c2.3,0,4.7,0,7,0c-2.3,0.2-4.6,0.3-7,0.5l-7,0.4c-4.7,0.2-9.3,0.4-14,0.6c-4.7,0.1-9.3,0.3-14,0.4C231.6,339.7,226.9,339.8,222.2,339.7z" /></g><g><path fill="#2B232B" d="M142.3,337.2c4.3,0,8.4,0.1,12.6,0.2c4.2,0.1,8.4,0.3,12.6,0.5c4.2,0.2,8.4,0.4,12.6,0.7l6.4,0.4c2.1,0.2,4.2,0.3,6.4,0.5c-2.1,0-4.2,0-6.4-0.1l-6.4-0.2c-4.2-0.1-8.4-0.3-12.6-0.5c-4.2-0.2-8.4-0.4-12.6-0.7C150.8,338,146.7,337.6,142.3,337.2z" /></g><g><path fill="#2B232B" d="M199.3,329.2l1.6,3c0.5,1,1,2,1.6,3c0.5,0.9,1,2,1.7,2.8c0.2,0.2,0.3,0.4,0.5,0.6s0.3,0.2,0.3,0.2c0.3,0,0.8-0.3,1.3-0.6c1.8-1.3,3.4-2.8,5.1-4.3c0.8-0.7,1.7-1.6,2.5-2.3l2.5-2.3c-1.4,1.8-2.8,3.5-4.4,5.1c-1.6,1.7-3.1,3.2-5.1,4.6c-0.2,0.2-0.5,0.3-0.7,0.4c-0.3,0.1-0.5,0.3-1,0.3c-0.2,0-0.6-0.1-0.7-0.2c-0.1-0.1-0.3-0.2-0.4-0.3c-0.2-0.2-0.4-0.5-0.6-0.7c-0.6-0.9-1.1-2-1.7-3C200.9,333.5,200,331.4,199.3,329.2z" /></g><path opacity="0.19" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " d="M199.3,329.2c0,0,3.5,9.3,5.3,10.1c1.8,0.8,11.6-10,11.6-10C209.9,330.9,204,331.1,199.3,329.2z" /></g>';
    }

    /// @dev Body N°4 => Yokai
    function item_4() public pure returns (string memory) {
        return
            '<path id="Neck" display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFDAEA" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-miterlimit="10" d="M175.8,276.8c0.8,10,1.1,20.2-0.7,30.4c-0.5,2.6-2.2,4.9-4.7,6.3c-16.4,8.9-41.4,17.2-70.2,25.2c-8.1,2.3-9.5,12.4-2.1,16.4c71.9,38.5,146.3,42.5,224.4,7c7.2-3.3,7.3-12.7,0.1-16c-22.3-10.3-43.5-23.1-54.9-29.9c-3-1.8-4.8-5.2-5.1-8.3c-0.7-7.7-0.7-12.5-0.1-22.2c0.7-11.3,2.6-21.2,4.6-29.3" xmlns="http://www.w3.org/2000/svg" /><path id="Ombre" display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#696969" d="M178.1,279c0,0,24.2,35,41,30.6s41.7-21.6,41.7-21.6c1.2-9.1,1.9-17.1,3.7-26c-4.8,4.9-10.4,9.2-18.8,14.5c-11.3,7.1-22,11.3-29.8,13.3L178.1,279z" xmlns="http://www.w3.org/2000/svg" /><path id="Head" display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFDAEA" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-miterlimit="10" d="M313.8,168.4c-0.6-0.8-12.2,8.3-12.2,8.3c0.3-4.9,11.8-53.1-17.3-86c-15.9-17.4-42.2-27.1-69.9-27.7c-24.5-0.5-48.7,10.9-61.6,24.4c-33.5,35-20.1,98.2-20.1,98.2c0.6,10.9,9.1,63.4,21.3,74.6c0,0,33.7,25.7,42.4,30.6c8.8,5,17.1,2.3,17.1,2.3c16-5.9,47.7-25.9,56.8-37.6l0.2-0.2c6.9-9.1,3.9-5.8,11.2-14.8c1.3-1.5,3-2.2,4.8-1.8c4.1,0.8,11.7,1.3,13.3-7c2.4-11.5,2.6-25.1,8.6-35.5C311.6,190.4,315.8,184.2,313.8,168.4z" xmlns="http://www.w3.org/2000/svg" /><path id="Ear" display="inline" fill-rule="evenodd" clip-rule="evenodd" fill="#FFDAEA" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-miterlimit="10" d="M141.9,236c0.1,1.1-8.3,3-9.7-12.1s-7.3-31-12.6-48c-3.8-12.2,12.2,6.7,12.2,6.7" xmlns="http://www.w3.org/2000/svg" /><g id="Ear2" display="inline" xmlns="http://www.w3.org/2000/svg"><path d="M304,174.7c-0.5,1.3-1.4,2.6-2.3,3.5c-0.9,0.8-1.7,1.4-2.6,2.2c-1.8,1.7-3.9,3.2-5.5,5.2s-2.9,4.1-4.2,6.3c-0.6,1-1.3,2.2-1.9,3.3l-1.7,3.4l-0.2-0.1l1.4-3.6c0.5-1.1,0.9-2.4,1.5-3.5c1.1-2.3,2.3-4.6,3.8-6.8s3-4.4,5.1-5.9c1-0.8,2.2-1.5,3.2-2.1c1.1-0.6,2.2-1.1,3.1-2L304,174.7z" /></g><g id="Buste" display="inline" xmlns="http://www.w3.org/2000/svg"><g><path fill="#2B232B" d="M222.2,339.7c4.6-0.4,9.3-0.6,13.9-0.9c4.7-0.2,9.3-0.4,14-0.6c4.7-0.1,9.3-0.3,14-0.4l7-0.1c2.3,0,4.7,0,7,0c-2.3,0.2-4.6,0.3-7,0.5l-7,0.4c-4.7,0.2-9.3,0.4-14,0.6c-4.7,0.1-9.3,0.3-14,0.4C231.6,339.7,226.9,339.8,222.2,339.7z" /></g><g><path fill="#2B232B" d="M142.3,337.2c4.3,0,8.4,0.1,12.6,0.2c4.2,0.1,8.4,0.3,12.6,0.5c4.2,0.2,8.4,0.4,12.6,0.7l6.4,0.4c2.1,0.2,4.2,0.3,6.4,0.5c-2.1,0-4.2,0-6.4-0.1l-6.4-0.2c-4.2-0.1-8.4-0.3-12.6-0.5c-4.2-0.2-8.4-0.4-12.6-0.7C150.8,338,146.7,337.6,142.3,337.2z" /></g><g><path fill="#2B232B" d="M199.3,329.2l1.6,3c0.5,1,1,2,1.6,3c0.5,0.9,1,2,1.7,2.8c0.2,0.2,0.3,0.4,0.5,0.6s0.3,0.2,0.3,0.2c0.3,0,0.8-0.3,1.3-0.6c1.8-1.3,3.4-2.8,5.1-4.3c0.8-0.7,1.7-1.6,2.5-2.3l2.5-2.3c-1.4,1.8-2.8,3.5-4.4,5.1c-1.6,1.7-3.1,3.2-5.1,4.6c-0.2,0.2-0.5,0.3-0.7,0.4c-0.3,0.1-0.5,0.3-1,0.3c-0.2,0-0.6-0.1-0.7-0.2c-0.1-0.1-0.3-0.2-0.4-0.3c-0.2-0.2-0.4-0.5-0.6-0.7c-0.6-0.9-1.1-2-1.7-3C200.9,333.5,200,331.4,199.3,329.2z" /></g><path opacity="0.19" fill-rule="evenodd" clip-rule="evenodd" enable-background="new    " d="M199.3,329.2c0,0,3.5,9.3,5.3,10.1c1.8,0.8,11.6-10,11.6-10C209.9,330.9,204,331.1,199.3,329.2z" /></g>';
    }

    /// @notice Return the skin name of the given id
    /// @param id The skin Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Kintaro";
        } else if (id == 2) {
            name = "Moon Yokai";
        } else if (id == 3) {
            name = "Blood Yokai";
        } else if (id == 4) {
            name = "Yokai";
        }
    }

    /// @dev The base SVG for the body
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="body">', children, "</g>"));
    }
}
