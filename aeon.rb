require "formula"

# Taken from https://github.com/Homebrew/homebrew-core/blob/master/Formula/monero.rb and adjusted for Aeon
class Aeon < Formula
  desc "AEON: the secure, private, untraceable cryptocurrency"
  homepage "http:/aeon.cash"

  url "https://github.com/aeonix/aeon.git", :tag => "v0.12.0.0", :revision => "e3a5694848931e21f26f0c9d9097fbd96314f35f"

  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "boost"
  depends_on "openssl"
  depends_on "readline"
  depends_on "unbound"
  depends_on "zeromq"

  resource "cppzmq" do
    url "https://github.com/zeromq/cppzmq/archive/v4.2.3.tar.gz"
    sha256 "3e6b57bf49115f4ae893b1ff7848ead7267013087dc7be1ab27636a97144d373"
  end

  def install
    (buildpath/"cppzmq").install resource("cppzmq")
    system "cmake", ".", "-DZMQ_INCLUDE_PATH=#{buildpath}/cppzmq",
                         "-DReadline_ROOT_DIR=#{Formula["readline"].opt_prefix}",
                         *std_cmake_args
    system "make", "install"

    # Avoid conflicting with miniupnpc
    # Reported upstream 25 May 2018 https://github.com/monero-project/monero/issues/3862
    rm lib/"libminiupnpc.a"
    rm_rf include/"miniupnpc"
  end
end
