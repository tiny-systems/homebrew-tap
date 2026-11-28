cask "tiny-systems" do
  version "0.1.5"
  sha256 "ab40510d086c733a5b29d25c47ef6a43585a86038be76eb2df988b477f7f1e24"

  url "https://github.com/tiny-systems/tiny-systems/releases/download/v#{version}/Tiny-Systems-#{version}.dmg"
  name "Tiny Systems"
  desc "Claude Code and Codex helpers that work on your own computers"
  homepage "https://tinysystems.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Tiny Systems.app"

  zap trash: [
    "~/Library/Application Support/Tiny Systems",
    "~/Library/Logs/Tiny Systems",
  ]
end
