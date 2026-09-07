class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.38"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.38/oberth-darwin-amd64"
      sha256 "1e05e86c574bc7cc3f47b186d1e695cdcd51bdf9981e418efbb94019c62ffee4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.38/oberth-darwin-arm64"
      sha256 "21b03d618dc8c686db694e1d9401b5ef1a81f3b0f7b8293c6f1d663df54cae34"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.38/oberth-linux-amd64"
      sha256 "9edda4ef098d5607777761578397bb69609f88858dfa82a54ee0d4c566147aea"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.38/oberth-linux-arm64"
      sha256 "984ad7919d93cc30b1d7eb161f77163b5afcb676bcbd617eb04aefe0c421367d"
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
