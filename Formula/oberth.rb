class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.20.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.20.2/oberth-darwin-amd64"
      sha256 "a209c228b10f9e3088b9f10febad04b8667fc7fd73a847d959957803459cf459"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.20.2/oberth-darwin-arm64"
      sha256 "3ec683717d00e214cd392ba8510b87c07d6b7254ab925847707009fee98d3b65"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.20.2/oberth-linux-amd64"
      sha256 "87d815530528ef6f266cf7fc83239023dd971124a49da435d3524407bd9fcabe"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.20.2/oberth-linux-arm64"
      sha256 "7c0e74a3a646fef61809f4fccb71bad6c23af0ecb94a106805fe4e8cc84f68ca"
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
