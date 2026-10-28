class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.62"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.62/oberth-darwin-amd64"
      sha256 "a3ccfae286444c8ccbfbc23c602f377a851b95a0805831912b4e03119dad9c92"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.62/oberth-darwin-arm64"
      sha256 "805de11175af916ca2dc002067b57730212290ae87488a604974e4fbe5a612e4"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.62/oberth-linux-amd64"
      sha256 "11a9a4b33f79adc403d06988b134cba5349bb03400d19d84517ce55f70b005c8"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.62/oberth-linux-arm64"
      sha256 "127536e6c515a37475e58344fac00d0dea15f6cc633f9960cc734b4be5a7a67f"
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
