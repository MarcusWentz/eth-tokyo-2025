// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        // counter.setNumber(0);
    }

    function test_discharge() public view {
        int256 output = counter.discharge();
        assertEq(output, 1053605156578262920);
    }

   function test_charge() public view {
        int256 output = counter.charge();
        assertEq(output, 1000000000000000000);
    }

}
