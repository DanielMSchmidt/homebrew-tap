class GoAgain < Formula
  desc "Go development helper for re-running failed tests"
  homepage "https://github.com/danielmschmidt/go-again"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/danielmschmidt/go-again/releases/download/v0.1.2/go-again-x86_64-apple-darwin.tar.gz"
      sha256 "bfcfe05fc74fbf8627be8a692fff88a0d6ab3467139501a12b4b3b73de60e073"
    end

    on_arm do
      url "https://github.com/danielmschmidt/go-again/releases/download/v0.1.2/go-again-aarch64-apple-darwin.tar.gz"
      sha256 "e725c6fcfe0f808435a988362f6fc624da26c7639b512905277eab8ab290c712"
    end
  end

  def install
    bin.install "go-again"
  end

  test do
    system "#{bin}/go-again", "--help"
  end
end
