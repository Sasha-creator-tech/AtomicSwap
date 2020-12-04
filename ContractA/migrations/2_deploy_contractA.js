const HTLC = artifacts.require("HTLC");

module.exports = function (deployer) {
  deployer.deploy(HTLC, 0x2e99758548972a8e8822ad47fa1017ff72f06f3ff6a016851f45c398732bc50c, 0x6df4530FAC225C828BCe32B9B8449D78ABc6E06A);
};
