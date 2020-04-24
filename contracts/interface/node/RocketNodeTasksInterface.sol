pragma solidity 0.6.6;

interface RocketNodeTasksInterface {
    function run(address _nodeAddress) external;
    function runOne(address _nodeAddress, address _taskAddress) external;
}
