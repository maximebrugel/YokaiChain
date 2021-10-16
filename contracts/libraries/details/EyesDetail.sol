// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";
import "./Eyes/EyesParts1.sol";
import "./Eyes/EyesParts2.sol";

/// @title Eyes SVG generator
library EyesDetail {
    /// @dev Eyes N°1 => Moon Gold
    function item_1() public pure returns (string memory) {
        return base(EyesParts1.item_1());
    }

    /// @dev Eyes N°2 => Dubu
    function item_2() public pure returns (string memory) {
        return base(EyesParts2.item_1());
    }

    /// @dev Eyes N°3 => Love
    function item_3() public pure returns (string memory) {
        return base(EyesParts2.item_2());
    }

    /// @dev Eyes N°4 => Pupils White-Red
    function item_4() public pure returns (string memory) {
        return base(EyesParts1.item_2());
    }

    /// @dev Eyes N°5 => Tomoe White
    function item_5() public pure returns (string memory) {
        return base(EyesParts1.item_3());
    }

    /// @dev Eyes N°6 => Stitch
    function item_6() public pure returns (string memory) {
        return base(EyesParts2.item_3());
    }

    /// @dev Eyes N°7 => Tomoe Red
    function item_7() public pure returns (string memory) {
        return base(EyesParts1.item_4());
    }

    /// @dev Eyes N°8 => Shine
    function item_8() public pure returns (string memory) {
        return base(EyesParts1.item_5());
    }

    /// @dev Eyes N°9 => Feels
    function item_9() public pure returns (string memory) {
        return base(EyesParts2.item_4());
    }

    /// @dev Eyes N°10 => Happy
    function item_10() public pure returns (string memory) {
        return base(EyesParts2.item_5());
    }

    /// @dev Eyes N°11 => Closed
    function item_11() public pure returns (string memory) {
        return base(EyesParts2.item_6());
    }

    /// @dev Eyes N°12 => Stitch Eyes
    function item_12() public pure returns (string memory) {
        return base(EyesParts1.item_6());
    }

    /// @dev Eyes N°13 => Globes
    function item_13() public pure returns (string memory) {
        return base(EyesParts1.item_7());
    }

    /// @dev Eyes N°14 => Arrow
    function item_14() public pure returns (string memory) {
        return base(EyesParts2.item_7());
    }

    /// @dev Eyes N°15 => Scribble
    function item_15() public pure returns (string memory) {
        return base(EyesParts2.item_8());
    }

    /// @dev Eyes N°16 => Akuma Eye
    function item_16() public pure returns (string memory) {
        return base(EyesParts1.item_8());
    }

    /// @dev Eyes N°17 => Annoyed
    function item_17() public pure returns (string memory) {
        return base(EyesParts2.item_9());
    }

    /// @dev Eyes N°18 => Rip
    function item_18() public pure returns (string memory) {
        return base(EyesParts2.item_10());
    }

    /// @dev Eyes N°19 => Pupils Kuro
    function item_19() public pure returns (string memory) {
        return base(EyesParts1.item_9());
    }

    /// @dev Eyes N°20 => Spiral
    function item_20() public pure returns (string memory) {
        return base(EyesParts1.item_10());
    }

    /// @dev Eyes N°21 => Pupils Red
    function item_21() public pure returns (string memory) {
        return base(EyesParts1.item_11());
    }

    /// @dev Eyes N°22 => Moon
    function item_22() public pure returns (string memory) {
        return base(EyesParts1.item_12());
    }

    /// @dev Eyes N°23 => Kitsune Eye
    function item_23() public pure returns (string memory) {
        return base(EyesParts1.item_13());
    }

    /// @notice Return the skin name of the given id
    /// @param id The skin Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Moon Gold";
        } else if (id == 2) {
            name = "Dubu";
        } else if (id == 3) {
            name = "Love";
        } else if (id == 4) {
            name = "Pupils White-Red";
        } else if (id == 5) {
            name = "Tomoe White";
        } else if (id == 6) {
            name = "Stitch";
        } else if (id == 7) {
            name = "Tomoe Red";
        } else if (id == 8) {
            name = "Shine";
        } else if (id == 9) {
            name = "Feels";
        } else if (id == 10) {
            name = "Happy";
        } else if (id == 11) {
            name = "Closed";
        } else if (id == 12) {
            name = "Stitch Eyes";
        } else if (id == 13) {
            name = "Globes";
        } else if (id == 14) {
            name = "Arrow";
        } else if (id == 15) {
            name = "Scribble";
        } else if (id == 16) {
            name = "Akuma Eye";
        } else if (id == 17) {
            name = "Annoyed";
        } else if (id == 18) {
            name = "Rip";
        } else if (id == 19) {
            name = "Pupils Kuro";
        } else if (id == 20) {
            name = "Spiral";
        } else if (id == 21) {
            name = "Pupils Red";
        } else if (id == 22) {
            name = "Moon";
        } else if (id == 23) {
            name = "Kitsune Eye";
        }
    }

    /// @dev The base SVG for the body
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="eyes">', children, "</g>"));
    }
}
