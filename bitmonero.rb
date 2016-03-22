require "formula"

class Bitmonero < Formula
  homepage "https://getmonero.org"

  head do
    url "https://github.com/monero-project/bitmonero.git"
  end

  stable do
    url "https://github.com/monero-project/bitmonero/archive/v0.9.3.tar.gz"
    sha256 "2da6624daaa0f6862d2452e606726db13fe6c6493405dea262237f387dea560d"
  end

  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "boost"
  depends_on "libevent"
  depends_on "unbound" => :optional
  depends_on "miniupnpc" => :optional

  bottle do
    cellar :any
    root_url "https://github.com/sammy007/homebrew-cryptonight/releases/download/monero-v0.9.3"
    sha256 "990de9c511dd13e36948429e53d9433aee376e4e0bef36d062e124070eb4958a" => :el_capitan
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
