require "formula"

class Bitmonero < Formula
  homepage "http://monero.cc"
  url "https://github.com/monero-project/bitmonero/archive/v0.8.8.4.tar.gz"
  sha1 "a30a4e7506b3301ead601d7f4f318920f29a4cb1"

  head "https://github.com/monero-project/bitmonero.git"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "miniupnpc" => :optional

  def install
    system "make"
    bin.install "./build/release/src/bitmonerod", "./build/release/src/simplewallet",
      "./build/release/src/connectivity_tool"
  end
end
