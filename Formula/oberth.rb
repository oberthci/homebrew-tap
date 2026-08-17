class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.33"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.33/oberth-darwin-amd64"
      sha256 "1952002dd76454c5c2bdf9e7bf2b3b91ef697219a4d173e1b28ce82ebd87921f"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.33/oberth-darwin-arm64"
      sha256 "fc853b8b155bdc1d1e7766348f8253ccfe07e958e56edcbe9dc66d0be9ab0e1d"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.33/oberth-linux-amd64"
      sha256 "49780910768483516d38b87767e6227d3b53a4d4a05718245951b6651e6b7f9a"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.33/oberth-linux-arm64"
      sha256 "e608d662bafa4b5d546379e7019d9ed382723db40922a8ddb3112197bb127483"
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
