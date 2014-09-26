require "formula"

class Bitmonero < Formula
  homepage "http://monero.cc"
  url "https://github.com/monero-project/bitmonero/archive/v0.8.8.4.tar.gz"
  sha1 "57a0d6cf54a2fb8171b0b746d5c0db1b9eb877c5"

  head "https://github.com/monero-project/bitmonero.git"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "unbound"
  depends_on "miniupnpc" => :optional

  bottle do
    cellar :any
    root_url "https://github.com/sammy007/homebrew-cryptonight/releases/download/monero-v0.8.8.4"
    sha1 "ddc46bab1c19e75221e81a6c4bd29bf285749373" => :mavericks
  end

  def install
    system "make"
    bin.install "./build/release/src/bitmonerod", "./build/release/src/simplewallet",
      "./build/release/src/connectivity_tool"
  end
end
