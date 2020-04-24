pragma solidity 0.6.6;

interface RocketNodeInterface {
    function getAvailableNodeCount(string calldata _durationID) external returns (uint256);
    function getAvailableNodeCount(bool _trusted, string calldata _durationID) external returns (uint256);
    function getRandomAvailableNode(bool _trusted, string calldata _durationID, uint256 _seed, uint256 _offset) external returns (address);
}
