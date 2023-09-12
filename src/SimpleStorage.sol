// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {
    uint256 favNum;
    uint256[] favNums;

    struct Person {
        uint256 favNum;
        string name;
    }

    Person[] public people;

    mapping(string => uint256) public nameToFavNum;

    function addPerson(uint256 _favNum, string memory _name) public {
        people.push(Person({favNum: _favNum, name: _name}));
        nameToFavNum[_name] = _favNum;
    }

    function store(uint256 _favNum) public {
        favNum = _favNum;
    }

    function retrieve() public view returns (uint256) {
        return favNum;
    }
}
