//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract HelloWorld {
    constructor() {}

    /**
     * pure function, should use pure keywords to identify this method
     */
    function multipliedBy2(uint256 x) public pure returns (uint256) {
        return x * 2;
    }
}
