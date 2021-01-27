/*
    Copyright 2020 Empty Set Squad <emptysetsquad@protonmail.com>
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

pragma solidity ^0.5.17;
pragma experimental ABIEncoderV2;

import '@uniswap/lib/contracts/libraries/FixedPoint.sol';
import '@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol';

contract MockUniswapV2PairTrade is IUniswapV2Pair {
    uint112 private reserve0;           // uses single storage slot, accessible via getReserves
    uint112 private reserve1;           // uses single storage slot, accessible via getReserves
    uint32  private blockTimestampLast; // uses single storage slot, accessible via getReserves

    uint public price0CumulativeLast;
    uint public price1CumulativeLast;

    function getReserves() external view returns (uint112, uint112, uint32) {
        return (reserve0, reserve1, blockTimestampLast);
    }

    //Start to code here simulate trade function ....

    /**
     * Should not use
     */
    function name() external pure returns (string memory) { revert("Should not use"); }
    function symbol() external pure returns (string memory) { revert("Should not use"); }
    function decimals() external pure returns (uint8) { revert("Should not use"); }
    function totalSupply() external view returns (uint) { revert("Should not use"); }
    function balanceOf(address owner) external view returns (uint) { revert("Should not use"); }
    function allowance(address owner, address spender) external view returns (uint) { revert("Should not use"); }

    function approve(address spender, uint value) external returns (bool) { revert("Should not use"); }
    function transfer(address to, uint value) external returns (bool) { revert("Should not use"); }
    function transferFrom(address from, address to, uint value) external returns (bool) { revert("Should not use"); }

    function DOMAIN_SEPARATOR() external view returns (bytes32) { revert("Should not use"); }
    function PERMIT_TYPEHASH() external pure returns (bytes32) { revert("Should not use"); }
    function nonces(address owner) external view returns (uint) { revert("Should not use"); }

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external { revert("Should not use"); }

    function MINIMUM_LIQUIDITY() external pure returns (uint) { revert("Should not use"); }
    function factory() external view returns (address) { revert("Should not use"); }
    function token0() external view returns (address) { revert("Should not use"); }
    function token1() external view returns (address) { revert("Should not use"); }
    function kLast() external view returns (uint) { revert("Should not use"); }

    function mint(address to) external returns (uint liquidity) { revert("Should not use"); }
    function burn(address to) external returns (uint amount0, uint amount1) { revert("Should not use"); }
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external { revert("Should not use"); }
    function skim(address to) external { revert("Should not use"); }
    function sync() external { revert("Should not use"); }

    function initialize(address, address) external { revert("Should not use"); }
}