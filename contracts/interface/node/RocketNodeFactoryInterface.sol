pragma solidity 0.6.6; 


// Our node interface
contract RocketNodeFactoryInterface {
    // Methods
    function createRocketNodeContract(address _nodeOwnerAddress) public returns(address);
}