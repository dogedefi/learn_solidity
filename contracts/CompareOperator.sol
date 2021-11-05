//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract CompareOperator {
    uint256 storedData;

    constructor() public {
        storedData = 10;
    }

    function getResult() public view returns (uint256) {
        uint256 a = 1; // 局部变量
        uint256 b = 2;
        uint256 result = a + b;
        return integerToString(result);
    }

    function integerToString(uint256 _i) internal pure returns (uint256 len) {
        if (_i == 0) {
            // 比较运算符
            return 0;
        }
        uint256 j = _i;
        uint256 len;

        while (j != 0) {
            // 比较运算符
            len++;
            j /= 10;
        } // j = 1

        return len; // 访问局部变量
    }
}
