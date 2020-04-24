pragma solidity 0.6.6;

/// @title Rocket Pool deposit vault
interface RocketDepositVaultInterface {
    function depositEther() payable external returns (bool);
    function withdrawEther(address _withdrawalAddress, uint256 _amount) external returns (bool);
}
