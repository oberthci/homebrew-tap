class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.45"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.45/oberth-darwin-amd64"
      sha256 "4d51c8e52f0f69a5e69a1dc3112fc1bc8eeea36b9bd111325bd09951cc74f736"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.45/oberth-darwin-arm64"
      sha256 "3c2e64379801d15a4eaabe5a84cb81da47185d1eaaba0a2e08002a8a5a1d70a7"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.45/oberth-linux-amd64"
      sha256 "0f921380160d48cb66136589bee69b52b9b4380dd5e81d751834200b07c9f5fc"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.45/oberth-linux-arm64"
      sha256 "219bd973ce35b631a38c1293504223b1708711e53dc6ccf92724e4ddfaffac71"
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
