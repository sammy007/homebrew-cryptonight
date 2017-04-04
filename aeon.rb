require "formula"

class Aeon < Formula
  homepage "http://aeon.cash"
  desc "AEON: the secure, private, untraceable cryptocurrency"

  head do
    url "https://github.com/aeonix/aeon.git"
  end

  stable do
    url "https://github.com/aeonix/aeon/archive/v0.9.10.0.tar.gz"
    sha256 "296692d89a158ba64dcc38c8c7b6d2689f1b4d395e30982a4d8efa6afcd91362"
  end

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "make"
    bin.install "./build/release/src/aeond", "./build/release/src/simplewallet"
  end
end
