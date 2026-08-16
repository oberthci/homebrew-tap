class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.15"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.15/oberth-darwin-amd64"
      sha256 "878c9e134fcb6f73ec09e90938197ca0e80904c2fed90cd60c7f89d40130f26f"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.15/oberth-darwin-arm64"
      sha256 "1dd93d1aa5e58d4e91294f406e1c48936c8bc18530dbf678989bb9e236cf55b0"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.15/oberth-linux-amd64"
      sha256 "df8714296e366f4f276c2a11633d564f734a0629727f400fe73e6a9aaec7cc94"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.15/oberth-linux-arm64"
      sha256 "eb6d2df635594dae0862ec6d1d399813a8b39debf4135c4ba4e34e4cbc48f002"
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
