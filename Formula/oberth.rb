class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.76"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.76/oberth-darwin-amd64"
      sha256 "cc6d619bb445ce917fc93da459655eb28f794599c8f28190a6b82c359b9b6b69"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.76/oberth-darwin-arm64"
      sha256 "1ad641f6ede9465f60f3618134978a1eb5c372a13a037a283444aa2b7a1bb919"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.76/oberth-linux-amd64"
      sha256 "9503e992ac3978a4e328cdf07f5afe7dbdcd2ff786a3166d2c4fdb08cc6f50c3"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.76/oberth-linux-arm64"
      sha256 "7fd8b53c3e8fdbe29b477edf04ffdb404257c452bada96e7dae501c771b5e4c6"
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
