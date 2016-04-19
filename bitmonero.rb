require "formula"

class Bitmonero < Formula
  homepage "https://getmonero.org"

  head do
    url "https://github.com/monero-project/bitmonero.git"
  end

  stable do
    url "https://github.com/monero-project/bitmonero/archive/v0.9.4.tar.gz"
    sha256 "b0dfb84181babb92ab1dd12272e1f4a6b8ddec9af61e579a53c9489181afd0ce"
  end

  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "boost"
  depends_on "libevent"
  depends_on "unbound" => :optional
  depends_on "miniupnpc" => :optional

  bottle do
    cellar :any
    root_url "https://github.com/sammy007/homebrew-cryptonight/releases/download/monero-v0.9.4"
    sha256 "bb5ceedd6d479c0e5c06a50f817c04b4e93afde91b88a0ceb63a4e194daef60c" => :el_capitan
  end

  def install
    system "make release"
    bin.install "./build/release/bin/bitmonerod", "./build/release/bin/simplewallet"
  end

  def caveats; <<-EOS.undent
    If you installed precompiled bottle remember that it's unofficial OS X build. You can always build it from source:
        brew install bitmonero --build-from-source
    EOS
  end
end
