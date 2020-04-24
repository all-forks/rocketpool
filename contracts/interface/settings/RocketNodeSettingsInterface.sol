pragma solidity 0.6.6;


// Our smart node interface
interface RocketNodeSettingsInterface {
    // Getters
    function getNewAllowed() external view returns (bool);
    function getEtherMin() external view returns (uint256);
    function getCheckinInterval() external view returns (uint256);
    function getInactiveAutomatic() external view returns (bool);
    function getInactiveDuration() external view returns (uint256);
    function getMaxInactiveNodeChecks() external view returns (uint256);
    function getFeePerc() external view returns (uint256);
    function getMaxFeePerc() external view returns (uint256);
    function getFeeVoteCycleDuration() external view returns (uint256);
    function getFeeVoteCyclePercChange() external view returns (uint256);
    function getDepositAllowed() external view returns (bool);
    function getDepositReservationTime() external view returns (uint256);
    function getWithdrawalAllowed() external view returns (bool);
}
