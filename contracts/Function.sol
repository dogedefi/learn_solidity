pragma solidity ^0.8.0;

contract Owner {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    // 定义修饰符 onlyOwner 不带参数
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    // 定义修饰符 costs 带参数
    modifier costs(uint256 price) {
        if (msg.value >= price) {
            _;
        }
    }
}

contract Register is Owner {
    mapping(address => bool) registeredAddresses;
    uint256 price;

    constructor(uint256 initialPrice) public {
        price = initialPrice;
    }

    // 使用修饰符 costs
    // payable标识 支持转账。没有的话如果发生以太坊转账就会报错
    function register() public payable costs(price) {
        registeredAddresses[msg.sender] = true;
    }

    // 使用修饰符 onlyOwner
    function changePrice(uint256 _price) public onlyOwner {
        price = _price;
    }
}

// 重载
contract Onverload {
    function getSum(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function getSum(
        uint256 a,
        uint256 b,
        uint256 c
    ) public pure returns (uint256) {
        return a + b + c;
    }

    function callSumWithTwoArguments() public pure returns (uint256) {
        return getSum(1, 2);
    }

    function callSumWithThreeArguments() public pure returns (uint256) {
        return getSum(1, 2, 3);
    }
}
