class Gip < Formula
  desc 'CLI tool for displaying GitHub Issues and Pull requests'
  homepage 'https://github.com/moutend/gip'
  version 'v0.3.0'

  if Hardware::CPU.is_64_bit?
    @@binname = 'gip_darwin_amd64_v0.3.0'
    url 'https://github.com/moutend/gip/releases/download/v0.3.0/' << @@binname
    sha256 '5ee1573d01959547b0d6860a04b0f896f3716c89acb3122d44cdc7a91acc5bec'
  else
    @@binname = 'gip_darwin_386_v0.3.0'
    url 'https://github.com/moutend/gip/releases/download/v0.3.0/' << @@binname
    sha256 '3464b6fe1d5ed13f659441ac691207e62ec344c8d52eb5098f2a18a46b21324c'
  end

  def install
    mv @@binname, 'gip'
    bin.install 'gip'
  end

  test do
    system 'false'
  end
end
