// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

library StringOps {
    function integerToString(uint _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        uint j = _i;
        uint len;

        while (j != 0) {
            len++;
            j /= 10;
        }

        bytes memory bstr = new bytes(len);
        uint k = len - 1;

        while (_i != 0) {
            bstr[k] = bytes1(uint8(48 + _i % 10));
            k = (k > 0) ? k - 1: 0;
            _i /= 10;
        }
        return string(bstr);
    }

}
