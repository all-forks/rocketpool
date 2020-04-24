pragma solidity 0.6.6; 


// Our node interface
interface RocketNodeAPIInterface {
    // Getters
    function getContract(address _nodeAddress) external view returns (address);
    function getTrusted(address _nodeAddress) external view returns (bool);
    function checkDepositReservationIsValid(address _nodeOwner, string calldata _durationID, uint256 _lastDepositReservedTime) external;
    function getRPLRatio(string calldata _durationID) external returns(uint256);
    function getRPLRequired(uint256 _weiAmount, string calldata _durationID) external returns(uint256, uint256);
    // Methods
    function add(string calldata _timezoneLocation) external returns (bool);
    function deposit(address _nodeOwner) external returns(address);
    function checkin(address _nodeOwner, uint256 _averageLoad, uint256 _nodeFeeVote) external returns(bool);
}