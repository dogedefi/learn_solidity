pragma solidity ^0.8.0;

// @todo 需要导入断言库
contract Unit {
    function testPriceUnit() public view {
        // assert(1 wei == 1);
        // assert(1 szabo == 1e12);
        // assert(1 finney == 1e15);
        // assert(1 ether == 1e18);
        // assert(2 ether == 2000 fenny);
    }

    function testTimeUnit() public view {
        // assert(1 seconds == 1);
        // assert(1 minutes == 60 seconds);
        // assert(1 hours == 60 minutes);
        // assert(1 day == 24 hours);
        // assert(1 week == 7 days);
    }
}
