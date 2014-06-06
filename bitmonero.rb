require "formula"

class Bitmonero < Formula
  homepage "http://monero.cc"
  head "https://github.com/monero-project/bitmonero.git"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "miniupnpc"

  def install
    system "make"
    bin.install "./build/release/src/bitmonerod", "./build/release/src/simplewallet",
      "./build/release/src/simpleminer", "./build/release/src/connectivity_tool"
  end
end
