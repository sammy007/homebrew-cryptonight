require "formula"

class Monero < Formula
  homepage "https://getmonero.org"

  head do
    url "https://github.com/monero-project/bitmonero.git"
  end

  stable do
    url "https://github.com/monero-project/bitmonero/archive/v0.9.4.tar.gz"
    sha256 "95d609de821d1cefab4055f78220db20b1101c1d4fefc91eae5516f047de5187"
  end

  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "boost"
  depends_on "libevent"
  depends_on "unbound" => :optional
  depends_on "miniupnpc" => :optional

  def install
    system "make release"
    bin.install "./build/release/bin/bitmonerod", "./build/release/bin/simplewallet"
  end
end
