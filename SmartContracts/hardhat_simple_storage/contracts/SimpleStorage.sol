pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    uint256 favoriteNumber = 3;

    function store(uint256 _favouriteNumber) public {
        favoriteNumber = _favouriteNumber;
    }

    function getFavouriteNumber() public view returns (uint256) {
        return favoriteNumber;
    }
}
