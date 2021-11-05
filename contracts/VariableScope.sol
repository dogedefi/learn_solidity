//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

// 知识点补充：unit256 = 32字节 = Math.pow(2, 32) 4294967296数据长度
// 无符号不需要扣除1bit作为符号标识
// 有符号长度为-Math.pow(2,31)~Math.pow(2,31)
contract C {
    uint256 public data = 30;
    uint256 internal iData = 10;

    function x() public returns (uint256) {
        data = 3; // 内部访问
        return data;
    }
}

contract Caller {
    C c = new C();

    function f() public view returns (uint256) {
        return c.data(); // 外部访问
    }
}

contract D is C {
    uint256 storedData; // 状态变量

    function y() public returns (uint256) {
        iData = 3; // 派生合约内部访问
        return iData;
    }

    function getResult() public view returns (uint256) {
        uint256 a = 1; // 局部变量
        uint256 b = 2;
        uint256 result = a + b;
        return storedData; // 访问状态变量
    }
}
