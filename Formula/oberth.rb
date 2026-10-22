class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.47"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.47/oberth-darwin-amd64"
      sha256 "2d121eda01cc377aebdb28c119bbd0b0d9ce996adcb194622c6d79cca5b9ba3e"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.47/oberth-darwin-arm64"
      sha256 "c586c3ed416c348c140b771a3b79a29fa618e4bdc5337f8ee5e96824259e1db8"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.47/oberth-linux-amd64"
      sha256 "30df4ca3fb83619fac9f1f7cb6dbd2d6ef83555f63b254489e452e983a1377b2"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.47/oberth-linux-arm64"
      sha256 "2d945778429e065c3831388e26ea64f89a1f13958647117c5939b28d51c9e72c"
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
