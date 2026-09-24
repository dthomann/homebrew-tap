cask "macviewpro" do
  version "1.0.3"
  sha256 "9f3d138e377aa21a4ad20cf14a7810a4fc971c1aae461206e269f5591b8b10cf"

  url "https://github.com/dthomann/macviewpro/releases/download/v#{version}/MacViewPro-#{version}.dmg"
  name "MacViewPro"
  desc "Fast native image viewer inspired by IrfanView"
  homepage "https://www.macviewpro.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MacViewPro.app"

  caveats <<~EOS
    Installed via Homebrew? Prefer `brew upgrade --cask macviewpro` for updates.
    Turn off automatic update checks in MacViewPro Preferences if Sparkle also prompts.
  EOS

  zap trash: [
    "~/Library/Preferences/com.creaffinity.macviewpro.plist",
    "~/Library/Caches/com.creaffinity.macviewpro",
  ]
end
