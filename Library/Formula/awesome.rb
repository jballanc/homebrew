require 'formula'

class Awesome < Formula
  url 'http://awesome.naquadah.org/download/awesome-3.4.10.tar.bz2'
  homepage 'http://awesome.naquadah.org/'
  md5 '245087f8065867eff37a2133287d5c03'

  depends_on 'glib'
  depends_on 'git'
  depends_on 'asciidoc'
  depends_on 'xmlto'
  depends_on 'luadoc'
  depends_on 'cairo'
  depends_on 'pango'
  depends_on 'oocairo'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end

  def test
    # this will fail we won't accept that, make it test the program works!
    system "/usr/bin/false"
  end
end
