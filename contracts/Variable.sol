//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

// 永久保存
// contract Variable {
//     uint256 storedData; // 状态变量

//     constructor() public {
//         storedData = 10; // 使用状态变量
//     }
// }

// 局部变量
// contract Variable {
//     constructor() public {}

//     function getResult() public view returns (uint256) {
//         uint256 a = 1; // 局部变量
//         uint256 b = 2;
//         uint256 result = a + b;
//         return result;
//     }
// }

// 全局变量，如block.difficulty、msg.data这些环境提供的方法，用来查询区块链相关交易信息

// 命名规范
