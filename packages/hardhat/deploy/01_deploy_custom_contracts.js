const contractNames = [
  //"EtherUnits",
  //"SimpleStorage",
  //"Variables",
  //"Counter",
  //"Primitives",
  //"Gas",
  //"IfElse",
  "Loop",
];

module.exports = async ({ getNamedAccounts, deployments }) => {
  const { deploy } = deployments;
  const { deployer } = await getNamedAccounts();
  await Promise.all(
    contractNames.map((contract) => {
      return deploy(contract, {
        from: deployer,
        log: true,
      });
    })
  );
};
module.exports.tags = contractNames;
