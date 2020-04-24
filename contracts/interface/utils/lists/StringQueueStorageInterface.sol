pragma solidity 0.6.6; 

interface StringQueueStorageInterface {
	function capacity() external view returns (uint);
    function getQueueLength(bytes32 _key) external view returns (uint);
    function getQueueItem(bytes32 _key, uint _index) external view returns (string memory);
    function getQueueIndexOf(bytes32 _key, string calldata _value) external view returns (int);
    function enqueueItem(bytes32 _key, string calldata _value) external;
    function dequeueItem(bytes32 _key) external;
    function removeItem(bytes32 _key, string calldata _value) external;
    function setCapacity(uint256 _value) external;
}
