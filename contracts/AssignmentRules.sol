//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract AssignmentRules {
    // 规则1 – 存储变量赋值给存储变量
    // 将一个状态(存储)变量赋值给另一个状态(存储)变量，将创建一个新的副本。
    // uint256 public stateVar1 = 10;
    // uint256 stateVar2 = 20;
    // function doSomething() public returns (uint256) {
    //     stateVar1 = stateVar2;
    //     stateVar2 = 30;
    //     return stateVar1; //returns 20
    // }
    // 规则2 – 内存变量复制到存储变量
    // 从内存变量复制到存储变量，总是会创建一个新的副本。
    // uint256 stateVar = 10; //storage
    // function doSomething() public returns (uint256) {
    //     uint256 localVar = 20; //memory
    //     stateVar = localVar;
    //     localVar = 40;
    //     return stateVar; //returns 20
    // }
    // 规则3 – 存储变量复制到内存变量
    // 从存储变量复制到内存变量，将创建一个副本。
    // uint256 stateVar = 10; //storage
    // function doSomething() public returns (uint256) {
    //     uint256 localVar = 20; //memory
    //     localVar = stateVar;
    //     stateVar = 40;
    //     return localVar; //returns 10
    // }

    // 规则4 – 内存变量复制到内存变量
    // 对于引用类型的局部变量，从一个内存变量复制到另一个内存变量不会创建副本。
    function doSomething() public pure returns (uint256) {
        uint256 localVar1 = 10; //memory
        uint256 localVar2 = 20; //memory

        // 过程
        // localVar1 -> 10
        // localVar1 -> 20
        // localVar2 -> 40

        localVar1 = localVar2;
        localVar2 = 40;

        return localVar1; //returns 20
    }
}
