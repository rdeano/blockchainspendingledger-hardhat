const { ethers } = require("hardhat");

async function main() {
  const SpendingLedger = await ethers.getContractFactory("SpendingLedger");
  const ledger = await SpendingLedger.deploy();
  await ledger.deployed();

  console.log("SpendingLedger deployed to:", ledger.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
