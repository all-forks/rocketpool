pragma solidity 0.6.6;

interface DepositInterface {
    function deposit(bytes calldata _pubkey, bytes calldata _withdrawalCredentials, bytes calldata _signature, bytes32 _depositDataRoot) external payable;
}
