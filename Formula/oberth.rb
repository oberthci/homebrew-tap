class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.33"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.33/oberth-darwin-amd64"
      sha256 "98251c8c3161e51afb80f1f23eb7cc0f1e7cb74a66c702d5ced42dd85a09591f"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.33/oberth-darwin-arm64"
      sha256 "19d8934a9f96d3ba359c9bd99ba7b4b2d4ae54957367a1d6bc0c9f42a17a8365"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.33/oberth-linux-amd64"
      sha256 "2816bbf11348a2aeb49c3b3b3f225169d583126466015c65038e7f63056f4efa"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.33/oberth-linux-arm64"
      sha256 "6b2586245c5902595b23ec88c0ccf0bd3901a1c2b7c9f3de540117587b1f889e"
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
