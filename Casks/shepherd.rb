cask "shepherd" do
  version "0.17.0"
  sha256 "bf89d3c44c5a02670d3118f27de40cb1d041a0115bb540a2d17279ca5f49eab5"

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
