cask "shepherd" do
  version "0.13.0"
  sha256 "699e2122f57334c31f55a4fb2586966ffa487bcf1366c7d922aafe0fe533be0b"

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
