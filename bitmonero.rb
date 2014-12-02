require "formula"

class Bitmonero < Formula
  homepage "http://monero.cc"

  head do
    url "https://github.com/monero-project/bitmonero.git"
  end

  stable do
    url "https://github.com/monero-project/bitmonero/archive/v0.8.8.5.tar.gz"
    sha1 "f7b59d486cbfcbc4a2c056549ded734fbce2de8d"
  end

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "libevent"
  depends_on "unbound" => :optional
  depends_on "miniupnpc" => :optional

  bottle do
    cellar :any
    root_url "https://github.com/sammy007/homebrew-cryptonight/releases/download/monero-v0.8.8.5"
    sha1 "f6f7d63b19294f4fc1f875758bde2913b04a787b" => :yosemite
    sha1 "ba22ad8154911d1c26e92430f5b46ab6455d1fca" => :mavericks
  end

  def install
    system "make build-release"

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
