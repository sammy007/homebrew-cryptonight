require "formula"

class MoneroCore < Formula
  desc "Monero Core Qt GUI"
  homepage "https://getmonero.org"

  head do
    url "https://github.com/monero-project/monero-core.git"
  end

  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "boost"
  depends_on "openssl"
  depends_on "qt5"

  def install
    system "./get_libwallet_api.sh"
    system "./build.sh"
    prefix.install "build/release/bin/monero-wallet-gui.app"
  end
end
