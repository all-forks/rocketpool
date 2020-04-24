pragma solidity 0.6.6;

interface RocketDepositIndexInterface {
    // Getters
    function getUserDepositCount(address _groupID, address _userID, string calldata _durationID) external returns (uint256);
    function getUserDepositAt(address _groupID, address _userID, string calldata _durationID, uint256 _index) external returns (bytes32);
    function getUserQueuedDepositCount(address _groupID, address _userID, string calldata _durationID) external returns (uint256);
    function getUserQueuedDepositAt(address _groupID, address _userID, string calldata _durationID, uint256 _index) external returns (bytes32);
    function getUserDepositTotalAmount(bytes32 _depositID) external view returns (uint256);
    function getUserDepositQueuedAmount(bytes32 _depositID) external view returns (uint256);
    function getUserDepositStakingAmount(bytes32 _depositID) external view returns (uint256);
    function getUserDepositRefundedAmount(bytes32 _depositID) external view returns (uint256);
    function getUserDepositWithdrawnAmount(bytes32 _depositID) external view returns (uint256);
    function getUserDepositStakingPoolCount(bytes32 _depositID) external returns (uint256);
    function getUserDepositStakingPoolAt(bytes32 _depositID, uint256 _index) external returns (address);
    function getUserDepositStakingPoolAmount(bytes32 _depositID, address _minipool) external view returns (uint256);
    function getUserDepositBackupAddress(bytes32 _depositID) external view returns (address);
    // Methods
    function add(address _userID, address _groupID, string calldata _durationID, uint256 _amount) external returns (bytes32);
    function assign(bytes32 _depositID, address _minipool, uint256 _assignAmount) external;
    function refund(bytes32 _depositID, uint256 _refundAmount) external;
    function refundFromStalledMinipool(bytes32 _depositID, address _minipool, uint256 _refundAmount) external;
    function withdrawFromMinipool(bytes32 _depositID, address _minipool, uint256 _withdrawalAmount) external;
}
