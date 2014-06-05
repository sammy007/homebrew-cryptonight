Homebrew-CryptoNight
====================
Monero (XMR) & Quazarcoin (QCN) formulas for Mac OS X 10.9

Wallets
-------
First of all you have to add repo:

`brew tap sammy007/cryptonight`

Then you can install daemons and wallets:

`brew install bitmonero --HEAD`

Don't forget to download [Mac 64bit blockchain](http://monero.cc/downloads/blockchain/mac/blockchain.bin)
and copy it to `~/.bitmonero/` directory.

`brew install quazarcoin --HEAD`

There will be conflict, because `simplewallet` appears in both XMR and QCN, so one formula have to be keg-only.

CPU Mining
----------

Build CPU miner (you have to use gcc-4.8):

`brew install cpuminer-multi --HEAD`

This is LucasJones's version, I'll switch this formula to much efficient wolf9466's fork as soon as he fix building on OS X.

TODO
----
1. Currently formulas are HEAD-only. Will fix soon.
2. Install `simplewallet` with suffix in order to avoid conflicts.
3. Switch to wolf9466's fork of cpuminer-multi.

If You Like It
--------------

**XMR**: 45pyCXYn2UBVUmCFjgKr7LF8hCTeGwucWJ2xni7qrbj6GgAZBFY6tANarozZx9DaQqHyuR1AL8HJbRmqwLhUaDpKJW4hqS1

**QCN**: 1N4FnxwCH8WjHDKCEGBzSL1GDY4pMkcyaKmZyDF78CoiGgRPjzPtYyjKTehmaVZPQTRJAxJyF1X9wE7kjQTjDVWKGgdEjoH
