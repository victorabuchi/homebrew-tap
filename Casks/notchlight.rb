cask "notchlight" do
  version "1.5"
  sha256 "de9a8ece392447123359e530b4c3d157264f75dd63342858c6e49a4edc3f9e3d"

  url "https://github.com/victorabuchi/notchlight/releases/download/v#{version}/Notchlight-#{version}.dmg"
  name "Notchlight"
  desc "Lock screen widgets and a Dynamic Island for the notch"
  homepage "https://notchlight.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Notchlight.app"

  uninstall quit: "com.victorabuchi.LockWidgets"

  zap trash: [
    "~/Library/Application Support/Notchlight",
    "~/Library/Caches/com.victorabuchi.LockWidgets",
    "~/Library/HTTPStorages/com.victorabuchi.LockWidgets",
    "~/Library/HTTPStorages/com.victorabuchi.LockWidgets.binarycookies",
    "~/Library/Preferences/com.victorabuchi.LockWidgets.plist",
  ]
end
