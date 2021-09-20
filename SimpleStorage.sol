// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    // uint256 favoriteNumber = 5;
    // bool favoriteBool = true;
    // string favoriteString = "string";
    // int256 favoriteInt = -5;
    // address favoriteAddress = 0xD8F9d2D967cC227C1DA7FE6817Fe9BC5ba487880;
    // bytes32 favoriteBytes = "cat";

    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // People public person = People({favoriteNumber:2, name: "Patrick"});

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public returns (uint256) {
        favoriteNumber = _favoriteNumber;
        return _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
