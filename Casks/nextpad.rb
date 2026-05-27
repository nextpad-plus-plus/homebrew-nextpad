cask "nextpad" do
  version "1.0.7"
  sha256 "57f50666807f1cd7bef8a923f1f724029f00e1c83f6c4c0f8d45d5aa0d6d929c"

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
