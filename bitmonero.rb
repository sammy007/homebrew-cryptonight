require "formula"

class Bitmonero < Formula
  homepage "https://getmonero.org"

  head do
    url "https://github.com/monero-project/bitmonero.git"
  end

  stable do
    url "https://github.com/monero-project/bitmonero/archive/v0.9.0.tar.gz"
    sha1 "a7603172f0360561e505c4a264d1d1b64ca0300e"
  end

  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "boost"
  depends_on "libevent"
  depends_on "unbound" => :optional
  depends_on "miniupnpc" => :optional

  bottle do
    cellar :any
    root_url "https://github.com/sammy007/homebrew-cryptonight/releases/download/monero-v0.9.0"
    sha256 "5d1c749cb03adabad80eb4f742d8b65c45f5ff635b7c196c483586adc59e7ef9" => :el_capitan
  end

  def install
    system "make release"
    bin.install "./build/release/bin/bitmonerod", "./build/release/bin/simplewallet",
      "./build/release/bin/connectivity_tool"
  end

  def caveats; <<-EOS.undent
    If you installed precompiled bottle remember that it's unofficial OS X build. You can always build it from source:
        brew install bitmonero --build-from-source
    EOS
  end
end
