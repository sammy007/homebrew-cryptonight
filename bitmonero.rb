require "formula"

class Bitmonero < Formula
  homepage "http://monero.cc"

  head do
    url "https://github.com/monero-project/bitmonero.git"
    depends_on "unbound"
  end

  stable do
    url "https://github.com/monero-project/bitmonero/archive/v0.8.8.4.tar.gz"
    sha1 "57a0d6cf54a2fb8171b0b746d5c0db1b9eb877c5"
  end

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "miniupnpc" => :optional

  bottle do
    cellar :any
    revision 1
    root_url "https://github.com/sammy007/homebrew-cryptonight/releases/download/monero-v0.8.8.4"
    sha1 "3c06ca8f9e93d7cee4843933a7619f355af324b3" => :mavericks
  end

  def install
    system "make"
    bin.install "./build/release/src/bitmonerod", "./build/release/src/simplewallet",
      "./build/release/src/connectivity_tool"
  end
end
