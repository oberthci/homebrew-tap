class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.56"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.56/oberth-darwin-amd64"
      sha256 "468a7c10a5fbff599a32daa21af881198eab458a59183ebedd2cab4a323e9a61"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.56/oberth-darwin-arm64"
      sha256 "cc042d8742a7674724fbd023853a9b36f24619194cead458791cc4b4e62d939a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.56/oberth-linux-amd64"
      sha256 "b5ebc81f886a3278ea40b849d829a7c3dc61f04fb5d8f81018a177f647fb0477"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.56/oberth-linux-arm64"
      sha256 "14bb91d9dadf50a280720d7616ea6abbf8fec59a5a5b3db6ff601fda1f28f75f"
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
