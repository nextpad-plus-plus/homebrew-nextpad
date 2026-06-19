cask "nextpad" do
  version "1.0.8"
  sha256 "376068ce0f5749f3ec3adfa57ee593c4eddb557f11c828ec9a81950d53a21b01"

  url "https://github.com/nextpad-plus-plus/nextpad-plus-plus-macos/releases/download/v#{version}/Nextpad++v#{version}.dmg",
      verified: "github.com/nextpad-plus-plus/nextpad-plus-plus-macos/"
  name "Nextpad++"
  desc "Native port of Notepad++"
  homepage "https://nextpad.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Nextpad++.app"

  uninstall quit: "org.nextpadplusplus.mac"

  zap trash: [
    "~/.nextpad++",
    "~/Library/Application Support/Nextpad++",
    "~/Library/Caches/org.nextpadplusplus.mac",
    "~/Library/HTTPStorages/org.nextpadplusplus.mac",
    "~/Library/Preferences/org.nextpadplusplus.mac.plist",
    "~/Library/Saved Application State/org.nextpadplusplus.mac.savedState",
    "~/Library/WebKit/org.nextpadplusplus.mac",
  ]
end
