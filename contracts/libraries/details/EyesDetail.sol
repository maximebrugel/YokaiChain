// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";
import "./Eyes/EyesParts1.sol";
import "./Eyes/EyesParts2.sol";

/// @title Eyes SVG generator
library EyesDetail {
    /// @dev Eyes N°1 => Kitsune
    function item_1() public pure returns (string memory) {
        return base(EyesParts1.item_13(), "Kitsune");
    }

    /// @dev Eyes N°2 => Moon
    function item_2() public pure returns (string memory) {
        return base(EyesParts1.item_12(), "Moon");
    }

    /// @dev Eyes N°3 => Pupils Blood
    function item_3() public pure returns (string memory) {
        return base(EyesParts1.item_11(), "Pupils Blood");
    }

    /// @dev Eyes N°4 => Spiral
    function item_4() public pure returns (string memory) {
        return base(EyesParts1.item_10(), "Spiral");
    }

    /// @dev Eyes N°5 => Pupils Moon
    function item_5() public pure returns (string memory) {
        return base(EyesParts1.item_9(), "Pupils Moon");
    }

    /// @dev Eyes N°6 => Rip
    function item_6() public pure returns (string memory) {
        return base(EyesParts2.item_10(), "Rip");
    }

    /// @dev Eyes N°7 => Annoyed
    function item_7() public pure returns (string memory) {
        return base(EyesParts2.item_9(), "Annoyed");
    }

    /// @dev Eyes N°8 => Akuma
    function item_8() public pure returns (string memory) {
        return base(EyesParts1.item_8(), "Akuma");
    }

    /// @dev Eyes N°9 => Scribble
    function item_9() public pure returns (string memory) {
        return base(EyesParts2.item_8(), "Scribble");
    }

    /// @dev Eyes N°10 => Arrow
    function item_10() public pure returns (string memory) {
        return base(EyesParts2.item_7(), "Arrow");
    }

    /// @dev Eyes N°11 => Globes
    function item_11() public pure returns (string memory) {
        return base(EyesParts1.item_7(), "Globes");
    }

    /// @dev Eyes N°12 => Stitch
    function item_12() public pure returns (string memory) {
        return base(EyesParts1.item_6(), "Stitch");
    }

    /// @dev Eyes N°13 => Closed
    function item_13() public pure returns (string memory) {
        return base(EyesParts2.item_6(), "Closed");
    }

    /// @dev Eyes N°14 => Happy
    function item_14() public pure returns (string memory) {
        return base(EyesParts2.item_5(), "Happy");
    }

    /// @dev Eyes N°15 => Feels
    function item_15() public pure returns (string memory) {
        return base(EyesParts2.item_4(), "Feels");
    }

    /// @dev Eyes N°16 => Shine
    function item_16() public pure returns (string memory) {
        return base(EyesParts1.item_5(), "Shine");
    }

    /// @dev Eyes N°17 => Shock
    function item_17() public pure returns (string memory) {
        return base(EyesParts1.item_14(), "Shock");
    }

    /// @dev Eyes N°18 => Tomoe Blood
    function item_18() public pure returns (string memory) {
        return base(EyesParts1.item_4(), "Tomoe Blood");
    }

    /// @dev Eyes N°19 => Stitched
    function item_19() public pure returns (string memory) {
        return base(EyesParts2.item_3(), "Stitched");
    }

    /// @dev Eyes N°20 => Tomoe Pure
    function item_20() public pure returns (string memory) {
        return base(EyesParts1.item_3(), "Tomoe Pure");
    }

    /// @dev Eyes N°21 => Pupils Pure-Blood
    function item_21() public pure returns (string memory) {
        return base(EyesParts1.item_2(), "Pupils Pure-Blood");
    }

    /// @dev Eyes N°22 => Dubu
    function item_22() public pure returns (string memory) {
        return base(EyesParts2.item_1(), "Dubu");
    }

    /// @dev Eyes N°23 => Moon Kin
    function item_23() public pure returns (string memory) {
        return base(EyesParts1.item_1(), "Moon Kin");
    }

    /// @notice Return the skin name of the given id
    /// @param id The skin Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Kitsune";
        } else if (id == 2) {
            name = "Moon";
        } else if (id == 3) {
            name = "Pupils Blood";
        } else if (id == 4) {
            name = "Spiral";
        } else if (id == 5) {
            name = "Pupils Moon";
        } else if (id == 6) {
            name = "Rip";
        } else if (id == 7) {
            name = "Annoyed";
        } else if (id == 8) {
            name = "Akuma";
        } else if (id == 9) {
            name = "Scribble";
        } else if (id == 10) {
            name = "Arrow";
        } else if (id == 11) {
            name = "Globes";
        } else if (id == 12) {
            name = "Stitch";
        } else if (id == 13) {
            name = "Closed";
        } else if (id == 14) {
            name = "Happy";
        } else if (id == 15) {
            name = "Feels";
        } else if (id == 16) {
            name = "Shine";
        } else if (id == 17) {
            name = "Shock";
        } else if (id == 18) {
            name = "Tomoe Blood";
        } else if (id == 19) {
            name = "Stitched";
        } else if (id == 20) {
            name = "Tomoe Pure";
        } else if (id == 21) {
            name = "Pupils Pure-Blood";
        } else if (id == 22) {
            name = "Dubu";
        } else if (id == 23) {
            name = "Moon Kin";
        }
    }

    /// @dev The base SVG for the body
    function base(string memory children, string memory name) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="eyes"><g id="', name, '">', children, "</g></g>"));
    }
}
