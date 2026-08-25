class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.24"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.24/oberth-darwin-amd64"
      sha256 "cdf8c2a5c54f154b7e9216f44bad14728b90691c2fd751249000709e6fe679f9"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.24/oberth-darwin-arm64"
      sha256 "06941a38a682733837592396dcaf73bff6b9589fa2ff9c71a69c5b1d358d2bab"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.24/oberth-linux-amd64"
      sha256 "6b329d0dfe85a7af5a0b429e67ba26ca382951844517a70be12db2ce185bf3ae"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.24/oberth-linux-arm64"
      sha256 "232a84d9443aa58054bf9efccb4d797aafc6e37b975773d2116b3365cf9eca6f"
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
