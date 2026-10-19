cask "notchlight" do
  version "1.4"
  sha256 "79c6da21e6b620d27c04be803f5caa9d9959237e0c8adcc38dba22f0af68cae2"

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
