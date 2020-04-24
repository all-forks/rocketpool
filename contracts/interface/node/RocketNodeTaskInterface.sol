pragma solidity 0.6.6;

interface RocketNodeTaskInterface {
    function name() external view returns (string memory);
    function run(address _nodeAddress) external returns (bool);
}
