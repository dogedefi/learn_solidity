//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract DataLocation {
    // Info of each user.
    struct UserInfo {
        uint256 amount; // How many Staking tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
        address fundedBy; // Funded by who?
    }

    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    constructor() public {}

    // 规则1 状态变量总是存储在存储区中，不能像在函数里显式标记
    uint stateVariable;  
    uint[] stateArray; 

    // 规则2 函数参数与返回值。函数参数包括返回参数都存储在内存中。
    function calculate(uint num1, uint num2) public pure returns (uint result) {
        return num1 + num2
    }

    // 规则3 – 局部变量。值类型的局部变量存储在内存中。但是，对于引用类型，需要显式地指定数据位置。
    // 存储在storage中  
    bool flag;  
    uint number;  
    address account;  

    function doSomething() public  {  

        /* 此处都是局部变量  */  

        // 值类型
        // 所以它们被存储在内存中
        bool flag2;  
        uint number2;  
        address account2;  
        // 不能显式覆盖具有值类型的局部变量。如下面的写法：
        // bool memory flag2;  // 错误
        // uint Storage number2;  // 错误 
        // address account2;  

        // 引用类型，需要显示指定数据位置，此处指定为内存
        uint[] memory localArray;
    }  
        



    // 持久化存储（计算机的硬盘中），gas费用较高
    function useStorage(address _user) public {
        UserInfo storage user = userInfo[_pid][_user];
    }

    // 函数之间传递一些信息，消耗少量gas，存放在内存。针对可变引用类型场景
    function useMemory(uint256 _pid) public {
        PoolInfo memory pool = poolInfo[_pid];
        // doSomething(pool); // Mabey change pool's inner state
    }

    // 应该也是存内存，就是不会收费。针对不可变得引用传值，用的时候基本都是外部传值
    function useCalldata(uint256[] calldata currencyKeys, address[] calldata oracleAddresses, bool removeExisting) /**external onlyAdmin */ public {
        // Cannot change any state
        // for (uint256 ind = 0; ind < currencyKeys.length; ind++) {
        //     _addChainlinkOracle(currencyKeys[ind], oracleAddresses[ind], removeExisting);
        // }
    }
