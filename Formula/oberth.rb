class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.11"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.11/oberth-darwin-amd64"
      sha256 "bdd55e653cd247d07a5d19fab62eb0ec0eee3dc75c26b659943a010b2d015d95"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.11/oberth-darwin-arm64"
      sha256 "09f39c2b9804b54204ef1d8d49fba5dc242f8dcc62815ad6e0aa4e02e51f0e3e"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.11/oberth-linux-amd64"
      sha256 "f46933d5c8743a253c0aa77d1f11ac36de589150cca7241b0d8019d3f3e32b74"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.11/oberth-linux-arm64"
      sha256 "d69fc890237e5f26c7197cd248c6e91392abb1d9f870a733d836a96102ee6406"
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
