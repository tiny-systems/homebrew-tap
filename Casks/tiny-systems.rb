cask "tiny-systems" do
  version "0.1.4"
  sha256 "fe7565e59e8bf8527f0a5a8ca64c15c42f87964022229ee8e5f141c3155f3d07"

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
