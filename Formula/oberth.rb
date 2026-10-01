class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.25"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.25/oberth-darwin-amd64"
      sha256 "aa6a5e4eccd6cdd38277a79da57ab2c027bac68b4a623888f00aa9fe50191d77"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.25/oberth-darwin-arm64"
      sha256 "0d55a2821b87e825a12cf87384ae1b1615f10f3766ac049835778b137d655ccf"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.25/oberth-linux-amd64"
      sha256 "b020196bece709ef1864c37d7bfbbe6411b1b31f5ad6da87233be8de6810296c"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.25/oberth-linux-arm64"
      sha256 "fe34e6fdc34f794d95472a1fe9d595a59bacd20e1c9786b0ce5cfdad95d2360f"
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
