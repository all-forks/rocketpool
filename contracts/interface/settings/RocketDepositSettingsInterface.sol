pragma solidity 0.6.6;


// Our deposit and withdrawals interface
interface RocketDepositSettingsInterface {
    // Getters
    function getDepositAllowed() external view returns (bool);
    function getProcessDepositQueueAllowed() external view returns (bool);
    function getDepositChunkSize() external view returns (uint256);
    function getDepositMin() external view returns (uint256);
    function getDepositMax() external view returns (uint256);
    function getChunkAssignMax() external view returns (uint256);
    function getDepositQueueSizeMax() external view returns (uint256);
    function getRefundDepositAllowed() external view returns (bool);
    function getCurrentDepositMax(string calldata _durationID) external returns (uint256);
    function getStakingWithdrawalAllowed() external view returns (bool);
    function getWithdrawalAllowed() external view returns (bool);
    function getStakingWithdrawalFeePerc() external view returns (uint256);
}
