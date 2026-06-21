# Homebrew cask for Margins — a native macOS Markdown reader.
#
# Source of truth lives in the app repo at github.com/Chrismacolor/margins
# (homebrew/margins.rb); this is the published copy. On each release, copy that
# file here and bump `version` + `sha256` to the released DMG.
#
#   brew install --cask Chrismacolor/tap/margins
#
# Updates flow through `brew upgrade` — no in-app updater (keeps the app
# zero-dependency).

cask "margins" do
  version "1.0.1"
  sha256 "e853b671aa05156541a4e35751982e4e7ff8b92a5e967f811ca21f0c0fe8b0b5"

  url "https://github.com/Chrismacolor/margins/releases/download/v#{version}/Margins-#{version}.dmg"
  name "Margins"
  desc "Native Markdown reader for macOS"
  homepage "https://github.com/Chrismacolor/margins"

  depends_on macos: :ventura

  app "Margins.app"

  zap trash: [
    "~/Library/Preferences/com.disanto.margins.plist",
  ]
end
