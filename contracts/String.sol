//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract String {
    constructor() public {
        // 字符串是特殊的数组，是引用类型
        // string data = "test";
        // 字节与字符串之间的内置转换，可以将字符串赋给byte32类型变量
        // bytes32 data = "test";

        // 可以使用string()构造函数将bytes转换为字符串
        // bytes memory bstr = new bytes(10);
        // string message = string(bstr);
    }
}
