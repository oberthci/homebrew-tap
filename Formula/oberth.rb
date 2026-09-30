class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.23"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.23/oberth-darwin-amd64"
      sha256 "511eee1a9823f37f54a440b5edd90e54a9e608743855df34aa0bd37f4cbf1487"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.23/oberth-darwin-arm64"
      sha256 "a73051f3e545f09038898274cf7cd24ab93725f20f43d03e4ab25fbe0a49b001"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.23/oberth-linux-amd64"
      sha256 "7424d51617dd0c648ea993708abbc3da3fb7566838def66870b3b33e43c7016a"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.23/oberth-linux-arm64"
      sha256 "f22a50b92746a9ed1fbede01aa10c2ac0a28303d2264517caeb3b6fac817cf81"
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
