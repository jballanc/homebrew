require 'formula'

class Oocairo < Formula
  url 'http://oocairo.naquadah.org/dist/oocairo-1.4.tar.gz'
  homepage 'http://oocairo.naquadah.org/'
  md5 'e85659771f1e5a6814ceecdd02e995dd'

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end

  def test
    # this will fail we won't accept that, make it test the program works!
    system "/usr/bin/false"
  end
end
