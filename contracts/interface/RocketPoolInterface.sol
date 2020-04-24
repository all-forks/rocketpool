pragma solidity 0.6.6;


interface RocketPoolInterface {
    function getRandomAvailableMinipool(bool _trusted, string calldata _durationID, uint256 _seed, uint256 _offset) external returns (address);
    function getNetworkUtilisation(string calldata _durationID) external view returns (uint256);
    function getPoolsCount() external returns(uint256);
    function getAvailableNodePoolsCount(address _nodeAddress, bool _trusted, string calldata _durationID) external returns(uint256);
    function getTotalEther(string calldata _type, string calldata _durationID) external view returns (uint256);
    function minipoolCreate(address _nodeOwner, string calldata _durationID, uint256 _etherAmount, uint256 _rplAmount, bool _isTrustedNode) external returns (address);
    function minipoolRemove() external returns (bool);
}
