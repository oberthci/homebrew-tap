class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.21"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.21/oberth-darwin-amd64"
      sha256 "25b85c29824bf57f357729ef4c68c6bc8614a49e75c09447b765fa4e1da4c6f9"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.21/oberth-darwin-arm64"
      sha256 "4185becada7db8556c40f1ce9d6787c8ab5642e2e1f28fc4e3087d7d05c9401a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.21/oberth-linux-amd64"
      sha256 "2d14f39fd5081e3fa147d3e0e96381a35c98538af331c5cafac8d3979ae335a2"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.21/oberth-linux-arm64"
      sha256 "c80cfceac3cd6a89838dc9fb93bd4ac5bf9ba15045cdc59458a4d8aaaf905c57"
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
