class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.11"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.11/oberth-darwin-amd64"
      sha256 "e3b3204383c4480cdf2ace521ec37aa06a033250e2c09ba4b88fcd8a5566e003"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.11/oberth-darwin-arm64"
      sha256 "74492da94f6ae7436ab3abc7f190d8519561212957b68829c7dc3750435346f1"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.11/oberth-linux-amd64"
      sha256 "9443c8bdc7a5557c784fae42ac42f6bf99b0fcdd72ba524490f75ff88a8b61a8"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.11/oberth-linux-arm64"
      sha256 "37e6d2ee3454ea918f0ed4f668c585e25053cd4f48d08dddba54d924791a14d8"
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
