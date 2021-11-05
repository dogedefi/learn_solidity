//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Array {
    constructor() public {}

    function f(uint256 len) {
        // 创建一个长度为10的数组
        // uint256[] memory balance = new uint256[10];

        // 初始化数组
        // uint256[] memory balance = [1, 2, 3]; // 直接省略
        // uint256[3] memory balance = [1, 2, 3]; // 也可以指定
        // balance[2] = 5; balance[2]: 3 -> 5

        uint256[] memory a = new uint256[](7);
        bytes memory b = new bytes(len);
        // a.length == 7, b.length == len
        a[6] = 8;
    }

    uint256[2**20] m_aLotOfIntegers;
    bool[2][] m_pairsOfFlags;

    // newpair存储在内存中——这是函数参数的默认存储位置
    function setAllFlagPairs(bool[2][] newPairs) {
        // 对存储数组赋值，替换传入的整个数组
        m_pairsOfFlags = newPairs;
    }

    function setFlagPair(
        uint256 index,
        bool flagA,
        bool flagB
    ) {
        // 访问不存在的索引将引发异常
        m_pairsOfFlags[index][0] = flagA;
        m_pairsOfFlags[index][1] = flagB;
    }

    function changeFlagArraySize(uint256 newSize) {
        // 如果newSize更小，则删除的数组元素将被清除
        m_pairsOfFlags.length = newSize;
    }

    function clear() {
        // 完全清除数组
        delete m_pairsOfFlags;
        delete m_aLotOfIntegers;
        // 效果相同
        m_pairsOfFlags.length = 0;
    }

    bytes m_byteData;

    function byteArrays(bytes data) {
        // byte 数组 ("bytes") 存储时没有填充(padding),
        // 但是可以与“uint8[]”相同处理
        m_byteData = data;
        m_byteData.length += 7;
        m_byteData[3] = 8;
        delete m_byteData[2];
    }

    function addFlag(bool[2] flag) returns (uint256) {
        return m_pairsOfFlags.push(flag);
    }

    function createMemoryArray(uint256 size) returns (bytes) {
        // 使用“new”创建动态内存数组:
        uint256[2][] memory arrayOfPairs = new uint256[2][](size);
        // 创建一个动态byte数组:
        bytes memory b = new bytes(200);
        for (uint256 i = 0; i < b.length; i++) b[i] = bytes1(i);
        return b;
    }
}
