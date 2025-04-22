// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LearnLogV2 {
    address public owner;
    struct Log {
        string date;
        string content;
    }
    constructor (){
    owner=msg.sender;
    }
    mapping(address => Log[]) public userLogs;
    

    function addLog(string memory _date, string memory _content) public {
        userLogs[msg.sender].push(Log(_date, _content));
    }

    function getLog(uint _index) public view returns (string memory, string memory) {
        require(_index < userLogs[msg.sender].length, "output");
        Log memory log = userLogs[msg.sender][_index];
        return (log.date, log.content);
    }

    function getLogCount() public view returns (uint) {
        return userLogs[msg.sender].length;
    }
}
