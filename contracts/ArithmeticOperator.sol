//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract ArithmeticOperator {
    function add(int32 a, int32 b) public view returns (int32) {
        return a + b;
    }

    function mod(uint32 a, uint32 b) public view returns (int32 result) {
        result = int32(a % b);
    }
}
