//SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // solidity versions

contract SimpleStorage{
    uint256 myfavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople; //creates an empty dynamic array of type Person

    mapping (string=>uint256) public nameToFavoriteNumber;// mapping our input to each other to make it easier to search or iterate

    function store(uint256 _favoriteNumber) public{
        myfavoriteNumber = _favoriteNumber;
    }
    //view, pure
    function retrieve() public view returns(uint256) {
        return myfavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        listOfPeople.push(Person(_favoriteNumber, _name)); 
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}