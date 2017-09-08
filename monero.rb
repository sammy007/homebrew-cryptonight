require "formula"

class Monero < Formula
  homepage "https://getmonero.org"
  desc "Monero: the secure, private, untraceable cryptocurrency"

  head do
    url "https://github.com/monero-project/monero.git"
  end

  stable do
    url "https://github.com/monero-project/monero/archive/v0.11.0.0.tar.gz"
    sha256 "93c217cf10624d6e93cd1db5d137310be8b23393400014e2c8808d5214207c20"
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
