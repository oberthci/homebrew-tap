class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.14"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.14/oberth-darwin-amd64"
      sha256 "62ed1f0a8cba29ac4b68da458b5abfbd15bf5ccc39be5bd8845703533a081a6a"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.14/oberth-darwin-arm64"
      sha256 "a42c989b564dc3a252e5b425af6db8fe6faad15f33f24ae4745539562547d647"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.14/oberth-linux-amd64"
      sha256 "6600c324a97096816a137036ede76c7ac87b7582fbdbc199b6064e79ce4233ef"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.14/oberth-linux-arm64"
      sha256 "1052ca01609aab553ee37828ddc5fa1e354adfbcf5c309efec2c5a79eb226fea"
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
