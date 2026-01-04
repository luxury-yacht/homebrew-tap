cask "luxury-yacht" do
  name "Luxury Yacht"
  desc "Luxury Yacht is a desktop app for managing Kubernetes clusters"

  app "Luxury Yacht.app"
  version "v1.1.5"

  arch   arm: "arm64",
         intel: "amd64"
  sha256 arm: "43c4c566099dc1ce6e8cc20ee370126843662c802e583a92ff9b81c0b72005ed",
         intel: "30b0928ab9c5560df7e0b56dabb8a69e1546ac5995fd583de87d116b7f80807b"

  url "https://github.com/luxury-yacht/app/releases/download/#{version}/luxury-yacht-#{version}-macos-#{arch}.dmg",
    verified: "github.com/luxury-yacht/app/"
  homepage "https://github.com/luxury-yacht/app"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/luxury-yacht",
  ]
end
