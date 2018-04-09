require "formula"

class Monero < Formula
  desc "Monero: the secure, private, untraceable cryptocurrency"
  homepage "https://getmonero.org"

  url "https://github.com/monero-project/monero.git", :tag => "v0.12.0.0"

  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "boost"
  depends_on "libevent"
  depends_on "readline"
  depends_on "zeromq"

  resource "cppzmq" do
    url "https://raw.githubusercontent.com/zeromq/cppzmq/7a8cc9d7cf448b8fd654ec4cd24fd48b57a76162/zmq.hpp"
    sha256 "eeccec908d78bc195d093fb05a37271b3f7a62ec65b026b6f0b8d801d9b966da"
  end

  def install
    resource("cppzmq").stage include.to_s

    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
