//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract learnEtherUnits{
    function test()public pure {
    assert( 1000000000000000000 wei == 1 ether );
    assert(1 wei == 1);
    assert(1 ether == 1e18);
    assert(2 ether ==2000000000000000000 wei );
    }

    function excersize()public pure{
        assert(1 minutes ==60 seconds);
        assert(24 hours == 1140 minutes);
        assert(1 days == 24 hours);
        assert(1 weeks == 7 days);
    }
}