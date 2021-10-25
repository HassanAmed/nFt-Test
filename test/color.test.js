const { Item } = require("react-bootstrap/lib/Breadcrumb");

const Color = artificats.require("./Color.sol");

require("chai")
  .use(require("chai-as-promised"))
  .should();

contract("Color", (accounts) => {
  let contract;

  describe("deployment", async () => {
    it("deploys successfully", async () => {
      contract = await Color.deployed();
    });
  });
});
