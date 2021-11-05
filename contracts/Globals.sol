pragma solidity ^0.8.0;

contract Globals {
    // blockhash(uint blockNumber) returns (bytes32)	给定区块的哈希值 – 只适用于256最近区块, 不包含当前区块。
    // block.coinbase (address payable)	当前区块矿工的地址
    // block.difficulty (uint)	当前区块的难度
    // block.gaslimit (uint)	当前区块的gaslimit
    // block.number (uint)	当前区块的number
    // block.timestamp (uint)	当前区块的时间戳，为unix纪元以来的秒
    // gasleft() returns (uint256)	剩余 gas
    // msg.data (bytes calldata)	完成 calldata
    // msg.sender (address payable)	消息发送者 (当前 caller)
    // msg.sig (bytes4)	calldata的前四个字节 (function identifier)
    // msg.value (uint)	当前消息的wei值
    // now (uint)	当前块的时间戳
    // tx.gasprice (uint)	交易的gas价格
    // tx.origin (address payable)	交易的发送方
}
