cask "sshvault" do
  version "1.8.0"
  sha256 :no_check # Updated automatically by CI

  url "https://github.com/caocuong2404/SSHVault/releases/download/v#{version}/SSHVault-v#{version}-arm64.dmg",
      verified: "github.com/caocuong2404/SSHVault/"
  name "SSHVault"
  desc "Native macOS SSH connection manager — PCI-DSS hardened"
  homepage "https://github.com/caocuong2404/SSHVault"

  depends_on macos: ">= :ventura"

  app "SSHVault.app"

  zap trash: [
    "~/Library/Application Support/SSHVault",
  ]
end
