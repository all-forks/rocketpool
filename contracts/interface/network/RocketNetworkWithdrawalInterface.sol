pragma solidity 0.6.8;

// SPDX-License-Identifier: GPL-3.0-only

interface RocketNetworkWithdrawalInterface {
    function getWithdrawalCredentials() external view returns (bytes memory);
}