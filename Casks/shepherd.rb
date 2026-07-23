cask "shepherd" do
  version "0.12.0"
  sha256 "7942525d53c350b97d426d50508a6f467eaf504c15f80f038933179bcc16a75e"

  url "https://github.com/cryks/shepherd/releases/download/v#{version}/Shepherd-#{version}.zip"
  name "Shepherd"
  desc "Menu bar app that monitors coding agents running in herdr"
  homepage "https://github.com/cryks/shepherd"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Shepherd.app"

  zap trash: [
    "~/Library/Caches/io.github.cryks.shepherd",
    "~/Library/HTTPStorages/io.github.cryks.shepherd",
    "~/Library/Preferences/io.github.cryks.shepherd.plist",
  ]
end
