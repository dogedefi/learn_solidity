//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract DataTypes {
    constructor() {}

    studyBasicTypes() {
        // 布尔值
        bool toggle = false;

        // 整型
        int256 ia = 1; // int eq int256
        uint256 uia = -1; // uint eq unit256

        // 定长浮点型
        fixed fa = 1.5;
        unfixed ufa = -1.5;

        // fixedMxN, ufixedMxN
        // M能被8整除（至少表示一个完整的字节），N是小数位
        fixed256x18 xfa = 10.50; // fixed与fixed128x18相同
    }

    studyComplexTypes() {
        // 字符串和bytes属于特殊数组，属于引用类型
        bytes32[] bytesArr = ['id1', 'id2']; // ?
        string[] stringArr = ['peach', 'banana', 'apple'];

        // 结构体struct
        struct OracleSettings {
            uint8 oracleType;
            address oracleAddress;
        }

        // map结构
        mapping(address => bytes32) public mAddress2Names; // 地址到名称的映射
    }
}
