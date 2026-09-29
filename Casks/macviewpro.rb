cask "macviewpro" do
  version "1.1.1"
  sha256 "9c4a76374accb9af78ae602cd079e3acbcf85a915c7636cfd28d34cf6e3fecf3"

  url "https://github.com/dthomann/macviewpro/releases/download/v#{version}/MacViewPro-#{version}.dmg"
  name "MacViewPro"
  desc "Fast native image viewer inspired by IrfanView"
  homepage "https://www.macviewpro.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  auto_updates true

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
