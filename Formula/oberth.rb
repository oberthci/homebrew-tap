class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.82"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.82/oberth-darwin-amd64"
      sha256 "fbe881461b6f800cf5f800cb4c84948e76e24f779bba4379f7dc9330e6ed6432"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.82/oberth-darwin-arm64"
      sha256 "3a45fecb9f647c0a87e1fecbf4bc045dd2303d1bf3384481fdd879d4b1f77628"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.82/oberth-linux-amd64"
      sha256 "ff06b50d63a21069b735d21576c62683d60e912019b2ca4dd0f7587e6dc3f74d"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.82/oberth-linux-arm64"
      sha256 "2568c4a5113a5fc73cdd8e26762b0e58bda8e73c62a4b7742139968e4245ffc6"
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
