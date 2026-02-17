class Pomobar < Formula
  desc "Native macOS menubar Pomodoro timer"
  homepage "https://github.com/danielmschmidt/pomobar"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/danielmschmidt/pomobar/releases/download/v0.3.0/pomobar-v0.3.0-macos.tar.gz"
    sha256 "0bc58b898b6e5d8849d3acc48a6b4fcbb7d7812c734489de09cfe591520c5da0"
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
