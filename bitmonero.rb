require "formula"

class Bitmonero < Formula
  homepage "https://getmonero.org"

  head do
    url "https://github.com/monero-project/bitmonero.git"
  end

  stable do
    url "https://github.com/monero-project/bitmonero/archive/v0.9.1.tar.gz"
    sha256 "a54f6690aff1b7154c12518edd70f8770b436e4af30bc9dcd5d79b0a2713d94c"
  end

  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "boost"
  depends_on "libevent"
  depends_on "unbound" => :optional
  depends_on "miniupnpc" => :optional

  bottle do
    cellar :any
    root_url "https://github.com/sammy007/homebrew-cryptonight/releases/download/monero-v0.9.1"
    sha256 "3803748ff3ab437c9163f7cd58daa9bf2795b82384f52cbe06348fb032d30c43" => :el_capitan
  end

  def install
    system "make release"
    bin.install "./build/release/bin/bitmonerod", "./build/release/bin/simplewallet",
      "./build/release/bin/connectivity_tool"
  end

  def caveats; <<-EOS.undent
    If you installed precompiled bottle remember that it's unofficial OS X build. You can always build it from source:
        brew install bitmonero --build-from-source
    EOS
  end
end
