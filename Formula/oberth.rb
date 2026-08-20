class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.10"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.10/oberth-darwin-amd64"
      sha256 "c22ccd269b01137757d09908508253e23faa436906e09e573d1475c757606b5c"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.10/oberth-darwin-arm64"
      sha256 "dedd6cfc6578dc759ff57615ae174693f78e37477f12fdae56f4b2eff28ee835"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.10/oberth-linux-amd64"
      sha256 "928d261b91f1cfe4354a4c0965c75802cbbde4360a3f936a0100caf5f17338bd"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.10/oberth-linux-arm64"
      sha256 "07c421782532d86808db69bdd3d6dd2269d0ad8464d1541f00023dd9b26569f3"
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
