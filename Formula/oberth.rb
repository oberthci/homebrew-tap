class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.78"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.78/oberth-darwin-amd64"
      sha256 "044d60d2d023fe68f2d18b080c9fcf1e4427f80a8330bf35c525f1bd32edc297"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.78/oberth-darwin-arm64"
      sha256 "8e96d36b122fd8acba94f1c3919b5555f7f21886b4c8a7ebdb38bcd439cab16a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.78/oberth-linux-amd64"
      sha256 "fb553033db65a45e0c33381b5a8b4889bf0ca3b08cf379668737f3810da7bb5d"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.78/oberth-linux-arm64"
      sha256 "3c68e657a5d266f86f348ea2ca0c00e5e1434999fc242577882226f101e8b970"
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
