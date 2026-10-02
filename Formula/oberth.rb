class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.6"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.6/oberth-darwin-amd64"
      sha256 "be23e7d00c819b7d87adfb3e6aebeeed5755b897fe5fac01745271862bfb3961"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.6/oberth-darwin-arm64"
      sha256 "e0f1df434e644064de26c3527134bf8b314fa4c4c267a47b2e4e4dcf4409c21e"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.6/oberth-linux-amd64"
      sha256 "8e236f9e4f2abb10f18d9fb18186c5248acf4f54eb73225056762af9686ab151"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.6/oberth-linux-arm64"
      sha256 "413c12688cac80a21bddd832fc2f92a734a8c8e3697535164a84b96c1a62ad0d"
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
