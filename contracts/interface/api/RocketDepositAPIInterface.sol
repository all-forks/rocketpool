pragma solidity 0.6.6; 


// Our API interface
interface RocketDepositAPIInterface {
    function deposit(address _groupID, address _userID, string calldata _durationID) external payable returns(bool);
    function depositRefundQueued(address _groupID, address _userID, string calldata _durationID, bytes32 _depositID) external returns(uint256);
    function depositRefundMinipoolStalled(address _groupID, address _userID, bytes32 _depositID, address _minipool) external returns(uint256);
    function depositWithdrawMinipoolStaking(address _groupID, address _userID, bytes32 _depositID, address _minipool, uint256 _amount) external returns(uint256);
    function depositWithdrawMinipool(address _groupID, address _userID, bytes32 _depositID, address _minipool) external returns(uint256);
    function setDepositBackupWithdrawalAddress(address _groupID, address _userID, bytes32 _depositID, address _backupWithdrawalAddress) external returns(bool);
}
