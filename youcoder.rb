class Youcoder < Formula
  desc "Terminal-native AI coding assistant"
  homepage "https://github.com/Kevin870202Zheng/Roosevelt-s-YouCoder"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Kevin870202Zheng/Roosevelt-s-YouCoder/releases/latest/download/youcoder-macos-arm64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Kevin870202Zheng/Roosevelt-s-YouCoder/releases/latest/download/youcoder-macos-x64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Kevin870202Zheng/Roosevelt-s-YouCoder/releases/latest/download/youcoder-linux-x64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "youcoder"
  end

  test do
    system "#{bin}/youcoder", "--version"
  end
end
