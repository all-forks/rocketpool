pragma solidity 0.6.6;


interface RocketMinipoolInterface {
    // Getters
    function getNodeOwner() external view returns(address);
    function getNodeContract() external view returns(address);
    function getNodeDepositEther() external view returns(uint256);
    function getNodeDepositRPL() external view returns(uint256);
    function getNodeTrusted() external view returns(bool);
    function getNodeDepositExists() external view returns(bool);
    function getNodeBalance() external view returns(uint256);
    function getNodeUserFee() external view returns(uint256);
    function getDepositCount() external view returns(uint256);
    function getDepositExists(bytes32 _depositID) external view returns(bool);
    function getDepositUserID(bytes32 _depositID) external view returns(address);
    function getDepositGroupID(bytes32 _depositID) external view returns(address);
    function getDepositBalance(bytes32 _depositID) external view returns(uint256);
    function getDepositStakingTokensWithdrawn(bytes32 _depositID) external view returns(uint256);
    function getDepositFeeRP(bytes32 _depositID) external view returns(uint256);
    function getDepositFeeGroup(bytes32 _depositID) external view returns(uint256);
    function getDepositCreated(bytes32 _depositID) external view returns(uint256);
    function getStatus() external view returns(uint8);
    function getStatusChangedTime() external view returns(uint256);
    function getStatusChangedBlock() external view returns(uint256);
    function getStakingDurationID() external view returns (string memory);
    function getStakingDuration() external view returns(uint256);
    function getStakingBalanceStart() external view returns(uint256);
    function getStakingBalanceEnd() external view returns(uint256);
    function getValidatorPubkey() external view returns (bytes memory);
    function getValidatorSignature() external view returns (bytes memory);
    function getValidatorDepositDataRoot() external view returns (bytes32);
    function getWithdrawalCredentials() external view returns (bytes32);
    function getUserDepositCapacity() external view returns(uint256);
    function getUserDepositTotal() external view returns(uint256);
    function getStakingUserDepositsWithdrawn() external view returns(uint256);
    // Methods
    function nodeDeposit() external payable returns(bool);
    function nodeWithdraw() external returns(bool);
    function deposit(bytes32 _depositID, address _userID, address _groupID) external payable returns(bool);
    function refund(bytes32 _depositID, address _refundAddress) external returns(bool);
    function withdrawStaking(bytes32 _depositID, uint256 _withdrawnAmount, uint256 _tokenAmount, address _withdrawnAddress) external returns(bool);
    function withdraw(bytes32 _depositID, address _withdrawalAddress) external returns(bool);
    function updateStatus() external returns(bool);
    function stakeMinipool(bytes calldata _validatorPubkey, bytes calldata _validatorSignature, bytes32 _validatorDepositDataRoot) external returns(bool);
    function logoutMinipool() external returns (bool);
    function withdrawMinipool(uint256 _withdrawalBalance) external returns (bool);
}
