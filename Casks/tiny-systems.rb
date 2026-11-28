cask "tiny-systems" do
  version "0.1.6"
  sha256 "d2fecb2d12ec3ca8118eb493ceacca8ace7660b859730e63890fef9128218ed4"

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
