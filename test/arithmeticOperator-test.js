const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("ArithmeticOperator", function () {
  it("Should 2 + 2 = 4", async function () {
    const ArithmeticOperator = await ethers.getContractFactory(
      "ArithmeticOperator"
    );
    const arithmeticOperator = await ArithmeticOperator.deploy();
    await arithmeticOperator.deployed();

    expect(await arithmeticOperator.add(2, 2)).to.equal(4);
  });

  it("Should 4 % 3 = 1", async function () {
    const ArithmeticOperator = await ethers.getContractFactory(
      "ArithmeticOperator"
    );
    const arithmeticOperator = await ArithmeticOperator.deploy();
    await arithmeticOperator.deployed();

    // expect(await arithmeticOperator.mod(2, 2)).to.equal(0);
    expect(await arithmeticOperator.mod(4, 3)).to.equal(1);
  });
});
