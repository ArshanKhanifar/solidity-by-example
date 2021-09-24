// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
import "hardhat/console.sol";
import "StringOps.sol";

contract Loop {
    function loop() public {
        for (uint i = 0; i < 10; i++) {
            console.log("looping baby", integerToString(i));
            if (i == 3) {
                console.log("reached here, but continuing");
                continue;
            }
            if (i == 5) {
                console.log("reached here, breaking");
                break;
            }
        }
        uint j;
        while (j < 10) {
            j++;
        }
    }
}
