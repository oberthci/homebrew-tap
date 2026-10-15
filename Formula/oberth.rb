class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.20"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.20/oberth-darwin-amd64"
      sha256 "d346e308be9e743f80e34a6ac587e15c77f1ed34c001442b8b07a0ed2a6d647c"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.20/oberth-darwin-arm64"
      sha256 "8b00acc38b864c2383cfe3bd71136f1134d44296c0c8ce1375641d86dfd1e202"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.20/oberth-linux-amd64"
      sha256 "0dc5d32a78acd2b84c9500cdbf87bdf9f19642afde1008bfea17d684ec5e7b79"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.20/oberth-linux-arm64"
      sha256 "cac89d9765feeca6a37610657eb03985aaa484611f438961065aa292d7b9adc8"
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
