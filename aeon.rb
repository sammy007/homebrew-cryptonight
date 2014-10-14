require "formula"

class Aeon < Formula
  homepage "https://github.com/iamsmooth/aeon"

  head "https://github.com/iamsmooth/aeon.git"

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "make"
    bin.install "./build/release/src/aeond", "./build/release/src/simplewallet"
  end
end
