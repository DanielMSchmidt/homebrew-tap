class Pomobar < Formula
  desc "Native macOS menubar Pomodoro timer"
  homepage "https://github.com/danielmschmidt/pomobar"
  url "https://github.com/danielmschmidt/pomobar/releases/download/v0.1.2/pomobar-v0.1.2-macos.tar.gz"
  version "0.1.2"
  sha256 "787f77c5643f88d113742543f25bf32f8b0fd7adaab0d04304c4f464c734ebc5"
  license "MIT"

  depends_on :macos

  def install
    bin.install "pomobar"
  end

  def caveats
    <<~EOS
      Pomobar is a menubar application. To start it:
        pomobar

      To run at login, enable "Start at Login" in the Settings menu.
    EOS
  end

  test do
    assert_predicate bin/"pomobar", :executable?
  end
end
