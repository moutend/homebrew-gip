class Gip < Formula
  desc 'CLI tool for displaying GitHub Issues and Pull requests'
  homepage 'https://github.com/moutend/gip'
  version 'v0.1.1'

  if Hardware::CPU.is_64_bit?
    @@binname = 'gip_darwin_amd64_v0.1.1'
    url 'https://github.com/moutend/gip/releases/download/v0.1.1/' << @@binname
    sha256 '7696c0143c6a1acbc2692321a461229db19ade5f13c83512074747ac08dadfb6'
  else
    @@binname = 'gip_darwin_386_v0.1.1'
    url 'https://github.com/moutend/gip/releases/download/v0.1.1/' << @@binname
    sha256 '294853725187c99592abfed4b9497a150fbd599cd81f6a6230b8917337e73a72'
  end

  def install
    mv @@binname, 'gip'
    bin.install 'gip'
  end

  test do
    system 'false'
  end
end
