class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.22.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.0/oberth-darwin-amd64"
      sha256 "b208f5d73b97c69d814d13bf54fd8a7782bd2e71f760efc204f0b71c790ce4f3"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.0/oberth-darwin-arm64"
      sha256 "b06742872c3b83e80ae4d32164e0ab39a019747002c62f7fa6d95c65ec21c012"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.0/oberth-linux-amd64"
      sha256 "7e6cbb35252809eb30e7c85455351a2b845772df6cb1d5579373b09a628e4387"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.0/oberth-linux-arm64"
      sha256 "afb5f64cad1ef59ddda738e2933e1a2dcd67b0669338f06cd7073294ea33a90d"
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
