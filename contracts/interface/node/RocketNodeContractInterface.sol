pragma solidity 0.6.6;


interface RocketNodeContractInterface {
    function getOwner() external view returns(address);
    function getRewardsAddress() external view returns(address);
    function getHasDepositReservation() external view returns(bool);
    function getDepositReservedTime() external view returns(uint256);
    function getDepositReserveEtherRequired() external returns(uint256);
    function getDepositReserveRPLRequired() external returns(uint256);
    function getDepositReserveDurationID() external returns (string memory);
    function getDepositReserveValidatorPubkey() external returns (bytes memory);
    function getDepositReserveValidatorSignature() external returns (bytes memory);
    function getDepositReserveValidatorDepositDataRoot() external returns (bytes32);
}