class Starness < Formula
  desc "Statically typechecked Starlark Harel statechart engine"
  homepage "https://github.com/starness-dev/starness"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/starness-dev/starness/releases/download/v0.1.1/starness-aarch64-apple-darwin.tar.gz"
      sha256 "1a9d7ea39606d2f527e8704b953b8218ad7c96dbcaf01d0bddef90612a16f450"
    end
    on_intel do
      url "https://github.com/starness-dev/starness/releases/download/v0.1.1/starness-x86_64-apple-darwin.tar.gz"
      sha256 "55418e85afeead6f010e2e266528a984c67848e763df2d88abd3a4b4e5023951"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/starness-dev/starness/releases/download/v0.1.1/starness-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "acb42a8d791dec4e40f256388db38b0f95269e5f3e8587f166bee5b40af0aeb1"
    end
    on_intel do
      url "https://github.com/starness-dev/starness/releases/download/v0.1.1/starness-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1969236d343de217aafb8e20cc43b69f5a9cb3be57b5a4e85186bb6c8a40e240"
    end
  end

  def install
    bin.install "starness"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/starness --version")
  end
end
