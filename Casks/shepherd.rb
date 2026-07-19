cask "shepherd" do
  version "0.11.0"
  sha256 "db18eb6aa40602dc3fa8e9cb3f963e174e9af9b2dde6723096734f249805e36c"

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
