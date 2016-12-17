class Gip < Formula
  desc 'CLI tool for displaying GitHub Issues and Pull requests'
  homepage 'https://github.com/moutend/gip'
  version 'v0.1.0'

  if Hardware::CPU.is_64_bit?
    @@binname = 'gip_darwin_amd64_v0.1.0'
    url 'https://github.com/moutend/gip/releases/download/v0.1.0/' << @@binname
    sha256 'ea81393e1a9c8e7ae90711776c46b8bc7b77d459c98828e477f2ec1b57b563e7'
  else
    @@binname = 'gip_darwin_386_v0.1.0'
    url 'https://github.com/moutend/gip/releases/download/v0.1.0/' << @@binname
    sha256 '6c5bdaba6aa089ae3da434f4fefeefdb7b08e58258f888d9d3675fadc94ded64'
  end

  def install
    mv @@binname, 'gip'
    bin.install 'gip'
  end

  test do
    system 'false'
  end
end
