class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.18.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.18.0/oberth-darwin-amd64"
      sha256 "97f49e560b22646e772391fb84456830642ed8962cde410a55a952d68d72e61a"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.18.0/oberth-darwin-arm64"
      sha256 "36604f8a60d472ff9330f827d791e8fb5ae259ea8d587ea6f72a4bda2bbd7052"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.18.0/oberth-linux-amd64"
      sha256 "b2ba2b7897920743899567bdb0b79802b31b1a079a008423910a95401428284d"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.18.0/oberth-linux-arm64"
      sha256 "132e37ff95f48fdf64ebcafbcc0be5b78843bfd0379ad7b15e8b9d3be74cf1df"
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
