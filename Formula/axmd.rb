class Axmd < Formula
  desc "Token-minimal macOS Accessibility (AXUIElement) tree CLI and headless action runner"
  homepage "https://github.com/elix1er/axmd"
  url "https://github.com/elix1er/axmd/releases/download/v0.1.0/axmd-v0.1.0-macos-universal.tar.gz"
  sha256 "041223d0b15248d9f4dc2c8a20cccbd54dc760a7ba0d336fbf2c0175f95ac541"
  license "MIT"
  depends_on :macos

  def install
    bin.install "axmd"
    pkgshare.install "skills"
  end

  test do
    assert_match "usage: axmd", shell_output("#{bin}/axmd --help 2>&1")
  end
end
