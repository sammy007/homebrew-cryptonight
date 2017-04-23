require "formula"

class Aeon < Formula
  homepage "http://aeon.cash"
  desc "AEON: the secure, private, untraceable cryptocurrency"

  head do
    url "https://github.com/aeonix/aeon.git"
  end

  stable do
    url "https://github.com/aeonix/aeon/archive/v0.9.12.0.tar.gz"
    sha256 "f51ac2e9065ee8001f5f5d74f65ab6ed05aaa114e4ff627ef6de43c2c72a89eb"
  end

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "make"
    bin.install "./build/release/src/aeond", "./build/release/src/simplewallet"
  end
end
