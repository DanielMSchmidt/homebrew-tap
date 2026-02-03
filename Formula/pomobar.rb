class Pomobar < Formula
  desc "Native macOS menubar Pomodoro timer"
  homepage "https://github.com/danielmschmidt/pomobar"
  url "https://github.com/danielmschmidt/pomobar/releases/download/v0.1.1/pomobar-v0.1.1-macos.tar.gz"
  sha256 "50cc6e49bbf1a1d993b766006e257c1bd8e9d903e45e7a7efe9d5947f701bc4a"
  version "0.1.1"
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
