pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {

  //event SetPurpose(address sender, string purpose);

    string public purpose = "Building Arshan Apps!!!";
    int public age = 12;
    address public destinationAddress = 0x141511df2fD4a9F3e7145B677dEfB108c980Cb05;

    constructor() {
    // what should we do on deploy?
    }

    function setPurpose(string memory newPurpose) public {
        purpose = newPurpose;
        console.log(msg.sender, "set purpose to", purpose);
        //emit SetPurpose(msg.sender, purpose);
    }

    function setAge(int newAge) public {
        age = newAge;
        console.log(msg.sender, "set age to", "I cant print age just yet" );
    }
}
