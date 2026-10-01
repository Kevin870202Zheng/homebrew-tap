class Youcoder < Formula
  desc "Terminal-native AI coding assistant"
  homepage "https://github.com/Kevin870202Zheng/Roosevelt-s-YouCoder"
  version "0.1.31"

  if OS.mac? && Hardware::CPU.arm?
    url "https://www.youcoder-ai.com/download/binary/youcoder-macos-arm64"
    sha256 "1f0fe02571c8ff791fdea0725d15bf0ed8a4fc4a23ea7468886ab0b4e2e7dcdb"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://www.youcoder-ai.com/download/binary/youcoder-macos-x64"
    sha256 "057881c10a342d8c37d01ce9828dc5751cb1f4bb6f8a181627eb4cdb8b42b6a0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://www.youcoder-ai.com/download/binary/youcoder-linux-x64"
    sha256 "aeacd26f44d7727188ae08cf29a02d78b2d47e889a9b4cc811bb3bafa5391fc9"
  end

  def install
    bin.install "youcoder"
  end

  test do
    system "#{bin}/youcoder", "--version"
  end
end
