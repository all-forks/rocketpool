pragma solidity 0.6.6;

/// @title Rocket Pool deposit queue
interface RocketDepositQueueInterface {
    function getBalance(string calldata _durationID) external view returns (uint256);
    function enqueueDeposit(address _userID, address _groupID, string calldata _durationID, bytes32 _depositID, uint256 _amount) external;
    function removeDeposit(address _userID, address _groupID, string calldata _durationID, bytes32 _depositID, uint256 _amount) external;
    function assignChunks(string calldata _durationID) external;
}
