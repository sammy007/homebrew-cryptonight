require "formula"

class Bitmonero < Formula
  homepage "http://monero.cc"

  head do
    url "https://github.com/monero-project/bitmonero.git"
  end

  stable do
    url "https://github.com/monero-project/bitmonero/archive/v0.8.8.6.tar.gz"
    sha1 "cf3f1cf63a6a73e49bf85c6a1606569058240c45"
  end

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "libevent"
  depends_on "unbound" => :optional
  depends_on "miniupnpc" => :optional

  bottle do
    cellar :any
    root_url "https://github.com/sammy007/homebrew-cryptonight/releases/download/monero-v0.8.8.6"
    sha1 "5ae9afc1aa50ba445615181901330f65d6dfaafa" => :yosemite
    sha1 "34a4e96f7e785708271a627204953801bd4e8f95" => :mavericks
  end

  def install
    if build.head?
      system "make release"
    else
      system "make build-release"
    end

    bin.install "./build/release/bin/bitmonerod", "./build/release/bin/simplewallet",
      "./build/release/bin/connectivity_tool"
  end

  def caveats; <<-EOS.undent
    If you installed precompiled bottle remember that it's unofficial OS X build. You can always build it from source:
        brew install bitmonero --build-from-source

    In order to speed up blockchain synchronization process, download fresh blockchain bootstrap:
        mkdir ~/.bitmonero
        wget -c http://monero.cc/downloads/blockchain/mac/blockchain.bin -O ~/.bitmonero/blockchain.bin
    EOS
  end
end
