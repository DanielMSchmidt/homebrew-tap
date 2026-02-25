class GoAgain < Formula
  desc "Go development helper for re-running failed tests"
  homepage "https://github.com/danielmschmidt/go-again"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/danielmschmidt/go-again/releases/download/v0.2.0/go-again-x86_64-apple-darwin.tar.gz"
      sha256 "ead53966c9b62c6e018e4ce0290d26fb03af0833d58bb356edbd1f94540c3b94"
    end

    on_arm do
      url "https://github.com/danielmschmidt/go-again/releases/download/v0.2.0/go-again-aarch64-apple-darwin.tar.gz"
      sha256 "7da4a5330a9778eca0a097119c4e43ce34f8d8ce022c9744b9e296298bb8ebc9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/danielmschmidt/go-again/releases/download/v0.2.0/go-again-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "75e39cda067db80c34ab165e8f3b6de825d12603bd8bae8434487dd627bafccd"
    end

    on_arm do
      url "https://github.com/danielmschmidt/go-again/releases/download/v0.2.0/go-again-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "386a829a298379e17bd75ea39ffd144e50af5ecdcdde531f78115aaaf2326326"
    end
  end

  def install
    bin.install "go-again"
  end

  test do
    system "#{bin}/go-again", "--help"
  end
end
