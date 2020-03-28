# This file was generated by GoReleaser. DO NOT EDIT.
class Tog < Formula
  desc "Tog CLI"
  homepage "https://github.com/escaletech/tog-cli"
  version "0.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/escaletech/tog-cli/releases/download/v0.3.0/tog_0.3.0_macOS_amd64.tar.gz"
    sha256 "ea4198b3299e7ca011955f29245ec50bb31ab654797d1af1ca2ce77f84167919"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/escaletech/tog-cli/releases/download/v0.3.0/tog_0.3.0_linux_amd64.tar.gz"
      sha256 "d4daa6aa1abb44983a7e59c5c025e57b2a8fd372517ef352789f5e6ae4a1d0be"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/escaletech/tog-cli/releases/download/v0.3.0/tog_0.3.0_linux_arm64.tar.gz"
        sha256 "e13d3d3d8dcc62ef065cae6a0f42fb804655519098e7384e0aab569b2235c75b"
      else
      end
    end
  end

  def install
    bin.install "bin/tog"
  end

  test do
    help_text = shell_output("#{bin}/tog --help")
    assert_includes help_text, "Usage:"
  end
end
