// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import 'forge-std/Vm.sol';
import '../MyContract.sol';

contract MyContractTest is DSTest {
    
    Vm public constant vm = Vm(HEVM_ADDRESS);
    MyContract _myContract;
    address _monster = address(100);
    uint256 _amount = 10;

    function setUp() public {
        _myContract = new MyContract();
        vm.etch(_monster, new bytes(0x1));
    }

    function testEat() public {
        _myContract.runEat(_monster, _amount);
    }

    function testDrink() public {
        vm.mockCall(_monster, abi.encodeWithSelector(IMonster.drink.selector, _amount), abi.encode(true));
        _myContract.runDrink(_monster, _amount);
    }
}
