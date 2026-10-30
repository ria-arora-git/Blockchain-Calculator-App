// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {

    int public result;

    function addition(int a, int b) public {
        result = a + b;
    }

    function subtraction(int a, int b) public {
        require(b <= a, "b should not be greater than a");
        result = a - b;
    }

    function multiplication(int a, int b) public {
        result = a * b;
    }

    function division(int a, int b) public {
        require(b != 0, "Denominator should not be zero");
        result = a / b;
    }

    function getResult() public view returns (int) {
        return result;
    }
}