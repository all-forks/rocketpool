pragma solidity 0.6.6;


// Our minipool interface
interface RocketMinipoolSettingsInterface {
    // Getters
    function getMinipoolLaunchAmount() external view returns (uint256);
    function getMinipoolCanBeCreated() external returns (bool);
    function getMinipoolNewEnabled() external view returns (bool);
    function getMinipoolClosingEnabled() external view returns (bool);
    function getMinipoolMax() external view returns (uint256);
    function getMinipoolNewGas() external view returns (uint256);
    function getMinipoolDepositGas() external view returns (uint256);
    function getMinipoolStakingDurationCount() external view returns (uint256);
    function getMinipoolStakingDurationAt(uint256 _index) external view returns (string memory);
    function getMinipoolStakingDurationExists(string calldata _duration) external view returns (bool);
    function getMinipoolStakingDurationEpochs(string calldata _duration) external view returns (uint256);
    function getMinipoolStakingDurationEnabled(string calldata _duration) external view returns (bool);
    function getMinipoolCheckInterval() external view returns (uint256);
    function getMinipoolWithdrawalFeeDepositAddress() external view returns (address);
    function getMinipoolBackupCollectEnabled() external view returns (bool);
    function getMinipoolBackupCollectDuration() external view returns (uint256);
    function getMinipoolTimeout() external view returns (uint256);
    function getMinipoolActiveSetSize() external view returns (uint256);
}
