cask "nextpad" do
  version "1.0.7"
  sha256 "032222bea620ddc84868d14c17d7d29b2735ac22628f194b3d4cd859cba681f4"

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
    "~/Library/Preferences/org.nextpadplusplus.mac.plist",
    "~/Library/Saved Application State/org.nextpadplusplus.mac.savedState",
  ]
end
