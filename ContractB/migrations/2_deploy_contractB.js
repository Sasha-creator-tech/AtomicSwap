const HTLC = artifacts.require("HTLC");

module.exports = function (deployer) {
  deployer.deploy(HTLC, '0x2e99758548972a8e8822ad47fa1017ff72f06f3ff6a016851f45c398732bc50c', '0x0b4104c9c4bf34f82a84C19B06A6dF75B9637781');
};