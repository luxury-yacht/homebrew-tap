cask "luxury-yacht" do
  name "Luxury Yacht"
  desc "Luxury Yacht is a desktop app for managing Kubernetes clusters"

  app "Luxury Yacht.app"
  version "v1.1.4"

  arch   arm: "arm64",
         intel: "amd64"
  sha256 arm: "4b209d6f5eda78cb7cfe94a0dbe8793c15c18422fce84c4be984248c1091a079",
         intel: "08e8ca30f1e8f6d8a6dbc740f7d258a7a59579eba51be2fff35fa4762d3f3dfe"

  url "https://github.com/luxury-yacht/app/releases/download/#{version}/luxury-yacht-#{version}-macos-#{arch}.dmg",
    verified: "github.com/luxury-yacht/app/"
  homepage "https://github.com/luxury-yacht/app"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/luxury-yacht",
  ]
end
