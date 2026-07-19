cask "shepherd" do
  version "0.10.0"
  sha256 "235329c90ca68aa728427f41e5374a7e0da148cb265ccd0ecbf25ab6e0fbcb66"

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
