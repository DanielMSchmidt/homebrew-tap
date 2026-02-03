class Pomobar < Formula
  desc "Native macOS menubar Pomodoro timer"
  homepage "https://github.com/danielmschmidt/pomobar"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/danielmschmidt/pomobar/releases/download/v0.1.0/pomobar-v0.1.0-macos.tar.gz"
    sha256 "6143677c6ffad3917fbc40aa1b06dd0ff3e7818f014f8eb0558b1a19a0c7308c"
  end

  def install
    bin.install "pomobar"
  end

  def caveats
    <<~EOS
      Pomobar is a menubar application. To start it:
        pomobar

      To run at login, add Pomobar to your Login Items in System Settings.
    EOS
  end

  test do
    assert_predicate bin/"pomobar", :executable?
  end
end
