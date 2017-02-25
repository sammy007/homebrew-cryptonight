require "formula"

class Aeon < Formula
  homepage "http://aeon.cash"
  desc "AEON: the secure, private, untraceable cryptocurrency"

  head do
    url "https://github.com/aeonix/aeon.git"
  end

  stable do
    url "https://github.com/aeonix/aeon/archive/v0.9.7.1.tar.gz"
    sha256 "2094419097ca6c5c48258e73dc2e0627732714fe00cfe8951469f05f6993280a"
  end

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "make"
    bin.install "./build/release/src/aeond", "./build/release/src/simplewallet"
  end
end
