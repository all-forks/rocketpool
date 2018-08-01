// Dependencies
const Web3 = require('web3');

// Artifacts
const RocketUser = artifacts.require('./contract/RocketUser');

// Perform user payout
module.exports = async (done) => {

    // Get command-line arguments (remove args from truffle)
    let args = process.argv.splice(4);

    // Validate arguments
    if (args.length != 2) done('Incorrect number of arguments. Please enter: user address, minipool address.');
    if (!Web3.utils.isAddress(args[0])) done('User address is invalid.');
    if (!Web3.utils.isAddress(args[1])) done('Minipool address is invalid.');

    // Parse arguments
    let [userAddress, miniPoolAddress] = args;

    // Get contract dependencies
    const rocketUser = await RocketUser.deployed();

    // Perform user payout
    let result = await rocketUser.userPayout(userAddress, miniPoolAddress);

    // Complete
    done('User payout performed successfully: ' + args.join(', '));

};

