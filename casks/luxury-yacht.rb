cask "luxury-yacht" do
  name "Luxury Yacht"
  desc "Luxury Yacht is a desktop app for managing Kubernetes clusters"

  app "Luxury Yacht.app"
  version "v1.1.3"

  # arch arm: "arm64", intel: "amd64"
  arch arm: "aarch64"
  sha256 arm: "a8b168b9aa12f4fc923f5a727a1314ee17f483e3cf2fb083a6312ad0387f1de6"
         # intel: "REPLACE_WITH_AMD64_SHA256"

  url "https://github.com/luxury-yacht/app/releases/download/#{version}/luxury-yacht-#{version}-macos-#{arch}.dmg",
    verified: "github.com/luxury-yacht/app/"
  homepage "https://github.com/luxury-yacht/app"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/luxury-yacht",
  ]
end
