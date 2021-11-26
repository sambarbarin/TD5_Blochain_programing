var token = artifacts.require("ERC20Token.sol");

module.exports = (deployer, network, accounts) => {
    deployer.then(async () => {
        await createToken(deployer, network, accounts); 
    });
};

//Ticker:  n_3N0
//Supply:  45385481000000000000000000
async function createToken(deployer, network, accounts) {
    ourToken = await token.new('SamSam', 'n_3N0', web3.utils.toBN('45385481000000000000000000'));
    a = ourToken.address;
    console.log(a);
}