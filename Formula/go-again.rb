class GoAgain < Formula
  desc "Go development helper for re-running failed tests"
  homepage "https://github.com/danielmschmidt/go-again"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/danielmschmidt/go-again/releases/download/v0.1.1/go-again-x86_64-apple-darwin.tar.gz"
      sha256 "b474a6e87f055b41c4a6bba38b37037904475c041ded01272ec3d9678603db37"
    end

    on_arm do
      url "https://github.com/danielmschmidt/go-again/releases/download/v0.1.1/go-again-aarch64-apple-darwin.tar.gz"
      sha256 "f029cff62325166d7ce5a5f81ab08ce2918e246563ad47e510dd3f637cf92bcd"
    end
  end

  def install
    bin.install "go-again"
  end

  test do
    system "#{bin}/go-again", "--help"
  end
end
