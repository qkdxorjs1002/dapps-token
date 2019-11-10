const DappsToken = artifacts.require("./DappsToken.sol");

contract("DappsToken", accounts => {
    it("should put 1000 DappsToken in the first account", () =>
    DappsToken.deployed()
        .then(instance => instance.balanceOf.call(accounts[0]))
        .then(balance => {
        assert.equal(
            balance.valueOf(),
            1000,
            "1000 wasn't in the first account"
        );
        })
    );
});
