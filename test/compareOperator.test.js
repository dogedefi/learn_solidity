const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("CompareOperator", function () {
  it("Should result equal 1", async function () {
    const CompareOperator = await ethers.getContractFactory("CompareOperator");
    const compareOperator = await CompareOperator.deploy();
    await compareOperator.deployed();

    expect(await compareOperator.getResult()).to.equal(1);
  });
});
