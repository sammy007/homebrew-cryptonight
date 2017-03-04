require "formula"

class Aeon < Formula
  homepage "http://aeon.cash"
  desc "AEON: the secure, private, untraceable cryptocurrency"

  head do
    url "https://github.com/aeonix/aeon.git"
  end

  stable do
    url "https://github.com/aeonix/aeon/archive/v0.9.8.0.tar.gz"
    sha256 "b405de9336f9dd209b3b0b370c080c19a3a529d2e3305faca7170ad532856bc7"
  end

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "make"
    bin.install "./build/release/src/aeond", "./build/release/src/simplewallet"
  end
end
