cask "macviewpro" do
  version "1.1.0"
  sha256 "9cdc584a6c19bd9ef9d56d5756ab0af456d06cc55c5f06947f8786b88dad4a0b"

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
