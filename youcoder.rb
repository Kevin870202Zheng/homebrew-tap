class Youcoder < Formula
  desc "Terminal-native AI coding assistant"
  homepage "https://github.com/Kevin870202Zheng/Roosevelt-s-YouCoder"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://www.youcoder-ai.com/download/binary/youcoder-macos-arm64"
    sha256 "5b7549a30fce48f4a0ee1f119a9704d4215f49b309a2bef7245ceb231c5a62a2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://www.youcoder-ai.com/download/binary/youcoder-macos-x64"
    sha256 "1f6f882f3642629faf0368237cf6047d3143fa4985976aae52739454e79aea7d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://www.youcoder-ai.com/download/binary/youcoder-linux-x64"
    sha256 "8bacd9a0d9104443f6687cc9348126c873cd93fd3119c555f44db5b361e8f28c"
  end

  def install
    bin.install "youcoder"
  end

  test do
    system "#{bin}/youcoder", "--version"
  end
end
