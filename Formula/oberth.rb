class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.88"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.88/oberth-darwin-amd64"
      sha256 "0f491e05b7724445ec7f8049e6457c1fd612e98224dd6285b82fc51f42d23c68"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.88/oberth-darwin-arm64"
      sha256 "ad99db772071e90a770d70717aa378de7a3652e7148fcd804af40ab38a352a42"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.88/oberth-linux-amd64"
      sha256 "9feaefbcabb2fa8c76823f98457b303f18b479be2e4a028e0f41105d5d9fcdab"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.88/oberth-linux-arm64"
      sha256 "d41ab5ca1a99a12438dc459345dc55027641ae44f04832e88b2e5310e7e1337a"
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
