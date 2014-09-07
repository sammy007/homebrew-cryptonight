require "formula"

class Boolberry < Formula
  homepage "http://boolberry.com"
  head "https://github.com/cryptozoidberg/boolberry.git"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "miniupnpc"

  def install
    system "make"
    bin.install "./build/release/src/boolbd", "./build/release/src/simplewallet",
      "./build/release/src/simpleminer", "./build/release/src/connectivity_tool"
  end
end
