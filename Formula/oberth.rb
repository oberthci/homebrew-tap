class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.51"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.51/oberth-darwin-amd64"
      sha256 "5ad76560c6dfcd9af98263e5ded67174b65a7e38f51a118ab9823446f59cc2ba"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.51/oberth-darwin-arm64"
      sha256 "a4ccad7becacbb66ce8a8b66d0ea81e783785905baa1344e7fbf786aa79e6a59"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.51/oberth-linux-amd64"
      sha256 "699a0e5b409701ccb7c05fed85fb3977027a0a26018b80e66b0c7818a412486e"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.51/oberth-linux-arm64"
      sha256 "78d9b1f932dd54ac6496a37d9b820e708fcb6ede12a89c44ef7556fe934a92c6"
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
