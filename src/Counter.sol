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
    
    SD59x18 xReserve = sd(10 ether);
    SD59x18 yReserve = sd(0 ether);
    SD59x18 Dx = sd(1 ether);
    SD59x18 a = sd(-10 ether);
    SD59x18 c = sd(10 ether);
    SD59x18 b = sd(0 ether);
    SD59x18 lnInputDenominator = c - b;
    SD59x18 lnInputNumerator = (xReserve - Dx ) - b;
    SD59x18 lnInput = lnInputNumerator.div(lnInputDenominator);
    // SD59x18 lnInput = sd(0.444444444444444444 ether);
    SD59x18 lnExpression = lnInput.ln();
    // SD59x18 lnExpression = sd(-0.810930216216328753 ether);
    SD59x18 lnExpressionScaled = lnExpression.mul(a);
    SD59x18 resultWrapped = lnExpressionScaled - yReserve;
    result = SD59x18.unwrap(resultWrapped);
    return result;

  }

}