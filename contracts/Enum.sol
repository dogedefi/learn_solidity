pragma solidity ^0.8.0;

contract Enum {
    enum FreshJuiceSize {
        SMALL,
        MEDIUM,
        LARGE
    }
    FreshJuiceSize choice;
    FreshJuiceSize constant defaultChoice = FreshJuiceSize.MEDIUM;

    function setLarge() public {
        choice = FreshJuiceSize.LARGE;
    }

    // set large, should output uint8: 2
    function getChoice() public view returns (FreshJuiceSize) {
        return choice;
    }

    // output uint256: 1
    function getDefaultChoice() public pure returns (uint256) {
        return uint256(defaultChoice);
    }
}
