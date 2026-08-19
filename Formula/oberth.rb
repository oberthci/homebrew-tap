class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.4"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.4/oberth-darwin-amd64"
      sha256 "78989055ab064e1c904a9ac94caf0d69b4b1504264ea2a7964a77deb996910f4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.4/oberth-darwin-arm64"
      sha256 "6242ae6fa9a43cd5b5839ada4d775e2562696cb9fdda872454af16b446066a67"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.4/oberth-linux-amd64"
      sha256 "46cf8e4af678861e32e0847d30e6ce699efaa23a95567a0d451d5c59878bb57a"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.4/oberth-linux-arm64"
      sha256 "6de1cd82f2662923fcbb6c5d392e6cd703e73379dde19deda9e9dd70af43b41d"
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
