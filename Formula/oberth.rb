class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.10"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.10/oberth-darwin-amd64"
      sha256 "666a62ce661b81575703859b7da0263750e33f056d4c71468d2d1747830adb1f"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.10/oberth-darwin-arm64"
      sha256 "c82842043b16757734c24be0f7039b0c6ae05041506fa7b0c04ac5dd5bf9cab8"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.10/oberth-linux-amd64"
      sha256 "70b92cfdb6bfcaceb524744c12ccd1e2dad990d77c8c1562a2909c26b1246e89"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.10/oberth-linux-arm64"
      sha256 "ffda1104c878ac2b9a8cb54358cf88102dfa31e3c585045969d070d9e975eae5"
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
