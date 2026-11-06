class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.91"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.91/oberth-darwin-amd64"
      sha256 "51ceb24108797ab211e2a5cf40edceae84e42cb65b103ff485a4b5d48932d75c"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.91/oberth-darwin-arm64"
      sha256 "8950e65d117d1e6eed5f8ac6d290a91bb1742bffc73b6722cac5b1e6c78f3366"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.91/oberth-linux-amd64"
      sha256 "e8dd2267576786b9386c597ca255858758a96f8727a735cef4bf1be327cf1cbb"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.91/oberth-linux-arm64"
      sha256 "e33f00c757f67c8e99cb7ebd4126a51ec244ca1d7ee2e93211f429d6008f4c7f"
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
