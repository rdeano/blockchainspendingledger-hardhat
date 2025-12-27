// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract SpendingLedger {
    mapping(uint => bytes32) public records;
    uint public count;

    event SpendingRecorded(uint indexed id, bytes32 hash);

    function recordSpending(bytes32 hash) public {
        records[count] = hash;
        emit SpendingRecorded(count, hash);
        count++;
    }
}