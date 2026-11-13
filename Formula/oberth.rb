class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.22.5"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.5/oberth-darwin-amd64"
      sha256 "046048a75cca08d4e021a2e408e3db419e5195a0130c827572d7f90f8d33d750"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.5/oberth-darwin-arm64"
      sha256 "f2f02a1c5a34989a0b8686354fa15e19659c0c9ed708d903aaf0a9a4128f4130"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.5/oberth-linux-amd64"
      sha256 "9946fdf4eed7baa143173cb9c633315609325e7a7d7c07c534a88db7614a020d"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.5/oberth-linux-arm64"
      sha256 "f0b96c7eaccb674e2ff83be622c1c74cd04c41c79ee917aea6d5bc13e8fb5ba5"
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
