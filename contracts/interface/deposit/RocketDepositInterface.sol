pragma solidity 0.6.6;

/// @title Rocket Pool deposits
interface RocketDepositInterface {
    function create(address _userID, address _groupID, string calldata _durationID) payable external returns (bytes32);
    function refund(address _userID, address _groupID, string calldata _durationID, bytes32 _depositID, address _depositorAddress) external returns (uint256);
    function refundFromStalledMinipool(address _userID, address _groupID, bytes32 _depositID, address _minipool, address _withdrawerAddress) external returns (uint256);
    function withdrawFromStakingMinipool(address _userID, address _groupID, bytes32 _depositID, address _minipool, uint256 _amount, address _withdrawerAddress) external returns (uint256);
    function withdrawFromWithdrawnMinipool(address _userID, address _groupID, bytes32 _depositID, address _minipool, address _withdrawerAddress) external returns (uint256);
    function setDepositBackupWithdrawalAddress(address _userID, address _groupID, bytes32 _depositID, address _backupWithdrawalAddress) external returns (bool);
}
