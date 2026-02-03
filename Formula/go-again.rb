class GoAgain < Formula
    desc "Go development helper for re-running failed tests"
    homepage "https://github.com/danielmschmidt/go-again"
    version "0.0.2"
    license "MIT"

    on_macos do
      on_intel do
        url "https://github.com/danielmschmidt/go-again/releases/download/v0.0.2/go-again-x86_64-apple-darwin.tar.gz"
        sha256 "351c2cb90f0c71629f7e4984b0e4c89b43b7129ac8493bff0d0c6eb2f8fdc467"
      end

      on_arm do
        url "https://github.com/danielmschmidt/go-again/releases/download/v0.0.2/go-again-aarch64-apple-darwin.tar.gz"
        sha256 "61de5179a15ba1e4ffda130c1c2a457a9d21f5263b4fd15aa375f1425e7f9bad"
      end
    end

    def install
      bin.install "go-again"
    end

    test do
      system "#{bin}/go-again", "--help"
    end
end
