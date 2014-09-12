Homebrew-CryptoNight
====================
Monero (XMR) & Quazarcoin (QCN) formulas for [Homebrew](http://brew.sh). Tested on Mac OS X 10.9.

Don't forget to install Command Line Tools for Xcode, otherwise you might get `malloc.h` not found errors.

Wallets
-------

First of all you have to add repo:

`brew tap sammy007/cryptonight`

Then you can install daemons and wallets:

### Monero

Install latest stable release: `brew install bitmonero`, or install from git: `brew install --HEAD -v bitmonero`

Don't forget to download [Mac 64bit blockchain](http://monero.cc/downloads/blockchain/mac/blockchain.bin)
and copy it to `~/.bitmonero/` directory.

### Boolberry

`brew install --HEAD boolberry`

You can download [Mac blockchain.bin](https://mega.co.nz/#!T80CVCpI!ZRJS5fXTURD5wjofDdsC3_H3OBEmUgbox-CJBMzBeLk)
and move it to `~/Library/Application\ Support/boolb/blockchain.bin`

### Quazar

`brew install --HEAD quazarcoin`

There will be conflict, because `simplewallet` appears in both XMR and QCN, so one formula have to be keg-only.

You can download [Mac 64bit blockchain](https://mega.co.nz/#!wZNwmZzS!QLG989DwzJUkVnG9vPN391IKFiA3w0DPQikmkTyYaDY)
and move it to `~/.quazarcoin/blockchain.bin` in order to speed up synchronization.

CPU Mining
----------

Build CPU miner:

`brew install --HEAD cpuminer-multi`

This is LucasJones's version, I'll switch this formula to much efficient wolf9466's fork as soon as he fix building on OS X.

**Mine Monero on** [hashinvest.net](http://hashinvest.net) pool.

TODO
----

1. Switch to wolf9466's fork of cpuminer-multi.

If You Like It
--------------

**XMR**: `45pyCXYn2UBVUmCFjgKr7LF8hCTeGwucWJ2xni7qrbj6GgAZBFY6tANarozZx9DaQqHyuR1AL8HJbRmqwLhUaDpKJW4hqS1`

**BBR**: `1Cf9omYfkxZ1qwxpSCsQ5PTsf6JX7zKt4L63BFijUFQ1eECK3Dt2agPCu62vSSBnDkXyBr691WVpKC5dw4GiNNySHzF4vS2`

**QCN**: `1N4FnxwCH8WjHDKCEGBzSL1GDY4pMkcyaKmZyDF78CoiGgRPjzPtYyjKTehmaVZPQTRJAxJyF1X9wE7kjQTjDVWKGgdEjoH`
