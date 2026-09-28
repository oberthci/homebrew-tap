class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.8"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.8/oberth-darwin-amd64"
      sha256 "d45d1f5369ad81c94b99dd09862cb16c901e09d776c0c99df2cf4e2ea9a36168"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.8/oberth-darwin-arm64"
      sha256 "6db86534d75faea192ee4a85e5d26685af1add5f95eb7326cb56ac9427ec5869"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.8/oberth-linux-amd64"
      sha256 "ee655920781f7a6649812d1d94735ccd25c224620527432d52fc24815c401091"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.8/oberth-linux-arm64"
      sha256 "f4d997e2b30aabcea3be7af4f254978fce3bb66321c7e404f7d2788c2c3718cd"
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
