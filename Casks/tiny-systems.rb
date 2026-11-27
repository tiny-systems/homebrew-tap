cask "tiny-systems" do
  version "0.1.0"
  sha256 "b3530bf98f336d4e556c693b49652e4b3681b3548c30c9557ecd12ac53340732"

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
