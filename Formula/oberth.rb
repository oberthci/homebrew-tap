class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.23"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.23/oberth-darwin-amd64"
      sha256 "71f6d9f226281cce6efb458fee16e5ce315097dd4637855371f8b58b251259bc"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.23/oberth-darwin-arm64"
      sha256 "60d0c5daa8b27b5a85947cdae9183c892156cff3ebe4788b9e6d8df1bc2eefb8"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.23/oberth-linux-amd64"
      sha256 "bddde018dc9e5070d22be993990878ce04272876594ea8a428866d8dc9f88c4b"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.23/oberth-linux-arm64"
      sha256 "13db2b78ac1d7a474be6b7b6f6e7a538df1b2a17df599f43f6580a9934e393b7"
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
