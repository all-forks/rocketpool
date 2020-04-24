pragma solidity 0.6.6;

interface PublisherInterface {
    function publish(bytes32 _event, bytes calldata _payload) external;
    function addSubscriber(bytes32 _event, string calldata _subscriber) external;
    function removeSubscriber(bytes32 _event, string calldata _subscriber) external;
}
