pragma solidity 0.6.6; 


// Our node interface
interface RocketNodeFactoryInterface {
    // Methods
    function createRocketNodeContract(address _nodeOwnerAddress) external returns(address);
}