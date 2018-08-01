// Dependencies
const Web3 = require('web3');

// Artifacts
const RocketUser = artifacts.require('./contract/RocketUser');

// Perform user payouts
module.exports = async (done) => {

    // Get command-line arguments (remove args from truffle)
    let args = process.argv.splice(4);

    // Validate arguments
    if (args.length != 1) done('Incorrect number of arguments. Please enter: minipool & user JSON data.');
    try { JSON.parse(args[0]); }
    catch (e) { done('Minipool & user JSON data is invalid.'); }

    // Expects JSON data in format:
    // [{"miniPool":"0x","users":["0x",...]},...]

    // Parse arguments
    let miniPools = JSON.parse(args[0]);

    // Get contract dependencies
    const rocketUser = await RocketUser.deployed();

    // Process minipools
    for (let pi = 0; pi < miniPools.length; ++pi) {
        let miniPool = miniPools[pi];
        let miniPoolAddress = miniPool.miniPool;
        for (let ui = 0; ui < miniPool.users.length; ++ui) {
            let userAddress = miniPool.users[ui];

            // Log
            console.log('Paying out minipool:', miniPoolAddress, 'user:', userAddress);

            // Perform user payout
            try {
                await rocketUser.userPayout(userAddress, miniPoolAddress);
                console.log('Success!');
            }
            catch (e) {
                console.log('Failure!');
            }

        }
    }

    // Complete
    done('Done!');

};

