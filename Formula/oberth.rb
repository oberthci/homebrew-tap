class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.2/oberth-darwin-amd64"
      sha256 "b26947f7381a816ed350799f44da3055838d6018f0f3ccf8a6d02880ccd94936"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.2/oberth-darwin-arm64"
      sha256 "02080b013bf3b6bffef8edba7b541a9dd5119aa6e4942bb1af9a7898b77a9f00"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.2/oberth-linux-amd64"
      sha256 "d9ba3c2d5f809675cfc04c7aceb8aa0cef5979c3c989d0b89eb412d71ff0e3b1"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.2/oberth-linux-arm64"
      sha256 "a6ba334d948056242bd7e49ca8d531a9ab6b66577cac2675fa0db9f4a6e63995"
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
