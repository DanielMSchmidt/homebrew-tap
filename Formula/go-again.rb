class GoAgain < Formula
  desc "Go development helper for re-running failed tests"
  homepage "https://github.com/danielmschmidt/go-again"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/danielmschmidt/go-again/releases/download/v0.1.3/go-again-x86_64-apple-darwin.tar.gz"
      sha256 "5de060b6bc9e5eb445a0a99c324b98ec6355bac8ab1fe46729ca59ddf8bd7e88"
    end

    on_arm do
      url "https://github.com/danielmschmidt/go-again/releases/download/v0.1.3/go-again-aarch64-apple-darwin.tar.gz"
      sha256 "1c02e50bc8bfe95b05ce719a72b58d33dd052cf4e3f2e6a708125aa36ca1b7ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/danielmschmidt/go-again/releases/download/v0.1.3/go-again-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "299577230f110bfc4228e571c03e387a25cc3aa14d97b294c26147f9366a2c5b"
    end

    on_arm do
      url "https://github.com/danielmschmidt/go-again/releases/download/v0.1.3/go-again-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "230ed886da6d854f3adabdbe443d533f54011857850905eaf6c5150bfadcee8c"
    end
  end

  def install
    bin.install "go-again"
  end

  test do
    system "#{bin}/go-again", "--help"
  end
end
