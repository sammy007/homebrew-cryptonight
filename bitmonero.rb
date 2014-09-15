require "formula"

class Bitmonero < Formula
  homepage "http://monero.cc"
  url "https://github.com/monero-project/bitmonero/archive/v0.8.8.3.tar.gz"
  sha1 "83dd5825f3c221c7f675e6e941eb69e150fa18d4"

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
