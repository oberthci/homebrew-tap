class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.22.3"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.3/oberth-darwin-amd64"
      sha256 "7ea32bbc60cb3c5a246f108deb445d7b5141ced13629035508a63d1454ec04cc"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.3/oberth-darwin-arm64"
      sha256 "c6b76546ce2eaaf8c8606b6bc5b61318fdcc01e93c7c2e381d912933b04aac3b"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.3/oberth-linux-amd64"
      sha256 "6e8ec1099e1a539582f17db2b68f3a9153ca6be4768e80a6fb9cf72fe6ea8653"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.3/oberth-linux-arm64"
      sha256 "19c0349c2c635201f72c812220a4e69af516e3fe911f459113cd078cff082376"
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
