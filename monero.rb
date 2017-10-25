require "formula"

class Monero < Formula
  homepage "https://getmonero.org"
  desc "Monero: the secure, private, untraceable cryptocurrency"

  head do
    url "https://github.com/monero-project/monero.git"
  end

  stable do
    url "https://github.com/monero-project/monero/archive/v0.11.1.0.tar.gz"
    sha256 "b5b48d3e5317c599e1499278580e9a6ba3afc3536f4064fcf7b20840066a509b"
  end

  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "boost"
  depends_on "libevent"

  def install
    system "make release"
    bin.install "./build/release/bin/monerod", "./build/release/bin/monero-wallet-cli",
      "./build/release/bin/monero-blockchain-import", "./build/release/bin/monero-blockchain-export"
  end
end
