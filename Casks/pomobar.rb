cask "pomobar" do
  version "0.2.0"
  sha256 "e58828e74fd498d6634fd4e0c76ffac6e6bec3cfdefc1d2b7ad8c7dd9181c182"

  url "https://github.com/danielmschmidt/pomobar/releases/download/v#{version}/pomobar-v#{version}-macos.zip"
  name "Pomobar"
  desc "Native macOS menubar Pomodoro timer"
  homepage "https://github.com/danielmschmidt/pomobar"

  depends_on macos: ">= :catalina"

  app "Pomobar.app"
  binary "#{appdir}/Pomobar.app/Contents/MacOS/pomobar", target: "pomobar"

  zap trash: [
    "~/Library/Application Support/com.pomobar.Pomobar",
    "~/Library/LaunchAgents/com.pomobar.plist",
  ]
end
