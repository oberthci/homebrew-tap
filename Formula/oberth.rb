class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.24"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.24/oberth-darwin-amd64"
      sha256 "f8d05c62f1b6678b055154c18dec064d143a863b1125456b86a2a5870d850bd6"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.24/oberth-darwin-arm64"
      sha256 "81339b3eb73384043bd5db402887a775106f29075ddec5c80de50ab8664f1d54"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.24/oberth-linux-amd64"
      sha256 "5e55d5d1b7d1ca310ee0a01e4e30388c82f22eec574d03e9b1c32d707e6e3032"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.24/oberth-linux-arm64"
      sha256 "53519653b0c564a259aba1d5c1db725bcd05a288d71098a32c19782444e04b5f"
    end
  end

  def install
    binary = stable.url.split("/").last
    bin.install binary => "oberth"
  end

  test do
    system bin/"oberth", "version"
  end
end
