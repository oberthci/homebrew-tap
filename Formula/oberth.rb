class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.17"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.17/oberth-darwin-amd64"
      sha256 "15b57f2a103671bb0702eafb0e6edeed56d2741bd8b793521303a6e9a023ab7a"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.17/oberth-darwin-arm64"
      sha256 "714154add36cec3e72bcd0fbfcd9b1be796361a72c23bd7e839b187b0582c129"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.17/oberth-linux-amd64"
      sha256 "53b30e7b6bbc5f4b8d9c0ef8f6a4cca3017a3697bcefe8cabe0f816a9dd205c1"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.17/oberth-linux-arm64"
      sha256 "d521c832ad30399947df4e78fd6ea9487b948c07f72df18f3aac8ea78b3d8a81"
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
