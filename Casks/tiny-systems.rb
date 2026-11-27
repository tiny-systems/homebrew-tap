cask "tiny-systems" do
  version "0.1.3"
  sha256 "438bec351a97efc9839ec92097a5d2e07212ce28b66266b350d5df85ada33573"

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
