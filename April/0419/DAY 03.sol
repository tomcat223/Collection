// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract LearnLog{
    struct Log{
    string date;
    string content;
    }
    Log[]public logs;
    function addLog(string memory _date, string memory _content) public {
        logs.push(Log(_date,_content));
    }
     function getLogCount() public view returns (uint) {
        return logs.length;
    }

    function getLog(uint index) public view returns (string memory, string memory) {
        require(index < logs.length, "Index out of range");
        Log memory log = logs[index];
        return (log.date, log.content);
    }
}
