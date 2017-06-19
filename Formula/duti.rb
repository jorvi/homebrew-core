class Duti < Formula
  desc "Select default apps for documents and URL schemes on macOS"
  homepage "https://github.com/jorvi/duti"
  url "https://github.com/jorvi/duti/archive/1.8.tar.gz"
  version "1.8"
  sha256 "b62b4a48e7e2f069b5668d48bfa13d8d0ea311607e30aa4184b847b14934681f"
  head "https://github.com/jorvi/duti.git"

  def install
    bin.mkpath
    system "make"
    bin.install "duti"
    man1.install "duti.1"
  end

  test do
    system "#{bin}/duti", "-x", "txt"
  end

end
