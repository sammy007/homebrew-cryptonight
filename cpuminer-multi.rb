require "formula"

class CpuminerMulti < Formula
  homepage "https://github.com/LucasJones/cpuminer-multi"
  head "https://github.com/LucasJones/cpuminer-multi.git"

  depends_on "automake" => :build
  depends_on "autoconf" => :build
  depends_on "libtool" => :build
  depends_on "gcc" => :build
  depends_on "curl"
  depends_on "jansson"

  def install
    ENV['CC'] = '/usr/local/bin/gcc-4.8'

    system "./autogen.sh"
    system "perl ./nomacro.pl"
    system "CFLAGS=\"-march=native -D__unix__\" ./configure"
    system "make"
    bin.install "minerd"
  end
end
