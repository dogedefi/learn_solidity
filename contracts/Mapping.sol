pragma solidity ^0.8.0;

contract LedgerBalance {
    mapping(address => uint256) public balances;

    // 获取余额
    function updateBalance(uint256 newBalance) public {
        // msg内置对象，这里是合约账户地址
        balances[msg.sender] = newBalance;
    }
}

contract Updater {
    // should output:
    // {
    //    "0": "uint256: 10"
    // }
    function updateBalance() public returns (uint256) {
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updateBalance(10);
        return ledgerBalance.balances(address(this));
    }
}
