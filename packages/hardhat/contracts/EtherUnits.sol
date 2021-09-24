// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract EtherUnits {
    uint public oneWei = 1 wei;
    uint public oneEther = 1 ether;

    bool public isOneWei = oneWei == 1;
    bool public isOneEther = oneEther == 1e18;
}
