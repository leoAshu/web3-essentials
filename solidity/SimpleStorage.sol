// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    // storage variable
    // by default since outside of a function
    uint256 myfavoriteNumber;

    // uint256[] listOfFavoriteNumbers;

    // user-defined type
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // array
    // public keyword exposes the variable
    Person[] public listOfPeople;

    // dictionary
    mapping(string => uint256) public nameToFavoriteNumber;

    // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    

    function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
    }

    // view: state can only be read and not modified
    // pure: state can neither be read nor modified
    // calling pure and view functions directly doesnt cost any gas
    // gas is spent only if pure or view functions are called by another gas costing function
    function retrieve() public view returns(uint256) {
        return myfavoriteNumber;
    }

    // calldata - immutable temporary variables
    // memory - mutable temporary variables
    // storage - mutable permanent variable
    // such keywords are only required for reference data types: string, array, struct
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}