cask "notchlight" do
  version "1.3"
  sha256 "f710452adbb5c0829d80656966b4e145346a9bf1eb8895f1c744540d2bc52fec"

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
