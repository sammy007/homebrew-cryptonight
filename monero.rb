require "formula"

class Monero < Formula
  homepage "https://getmonero.org"
  desc "Monero: the secure, private, untraceable cryptocurrency"

  head do
    url "https://github.com/monero-project/monero.git"
  end

  stable do
    url "https://github.com/monero-project/monero/archive/v0.10.3.1.tar.gz"
    sha256 "9bf321dd501a43a34fb647e535e1b1c583a9aa6a639ccab6305dea3253d6b2f2"
  end

  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "boost"
  depends_on "libevent"
  depends_on "unbound" => :optional
  depends_on "miniupnpc" => :optional

  def install
    system "make release"
    bin.install "./build/release/bin/monerod", "./build/release/bin/monero-wallet-cli",
      "./build/release/bin/monero-blockchain-import", "./build/release/bin/monero-blockchain-export"
  end
end
