cask "nextpad" do
  version "1.1.0"
  sha256 "8254dd8f5a0483b3e20916a72a969d225a452feab54079642a4b7767ed052bf5"

  url "https://github.com/nextpad-plus-plus/nextpad-plus-plus-macos/releases/download/v#{version}/Nextpad++v#{version}.dmg",
      verified: "github.com/nextpad-plus-plus/nextpad-plus-plus-macos/"
  name "Nextpad++"
  desc "Native port of Notepad++"
  homepage "https://nextpad.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

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
