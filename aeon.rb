require "formula"

class Aeon < Formula
  homepage "http://aeon.cash"
  desc "AEON: the secure, private, untraceable cryptocurrency"

  head do
    url "https://github.com/aeonix/aeon.git"
  end

  stable do
    url "https://github.com/aeonix/aeon/archive/v0.9.11.0.tar.gz"
    sha256 "d6716bfb8cdf9927283d5dfc69d6541f4459ade38637475227242ee844a9cd63"
  end

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "make"
    bin.install "./build/release/src/aeond", "./build/release/src/simplewallet"
  end
end
