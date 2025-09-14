// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

// Signed
// import { SD59x18, convert } from "@prb/math/src/SD59x18.sol";
import { SD59x18, sd } from "@prb/math/src/SD59x18.sol";
// // Unsigned
// import { UD60x18 , convert } from "@prb/math/src/UD60x18.sol"; 

contract Counter {

  function discharge() public pure returns (int256 result) {

    // prb-math conversion methods:
    // sd = input is already scaled by multiplying by 1 ether
    // convert = unscaled input that will be scalled multiplying value by 1 ether
    
    SD59x18 a = sd(-1 ether);
    SD59x18 yReserve = sd(0 ether);
    SD59x18 lnInput = sd(0.4444 ether);
    SD59x18 lnExpression = lnInput.ln();
    // SD59x18 lnExpression = convert(-0.8 ether);
    SD59x18 lnExpressionScaled = lnExpression.mul(a);
    SD59x18 resultWrapped = lnExpressionScaled - yReserve;
    result = SD59x18.unwrap(resultWrapped);
    return result;

  }

}