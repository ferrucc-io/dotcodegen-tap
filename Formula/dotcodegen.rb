class Dotcodegen < Formula
  desc "Generate tests for your code using LLMs"
  homepage "https://github.com/ferrucc-io/dotcodegen"
  url "https://github.com/ferrucc-io/dotcodegen/archive/main.tar.gz"
  version "0.1.3"
  sha256 "f4890a8e953f8d4e1e9152593d3a432a5e785fd25a11e712067f33d2c7665717"

  depends_on "ruby@3.3"

  def install
    system "gem", "build", "dotcodegen.gemspec"
    system "gem", "install", "dotcodegen-0.1.3.gem"
    bin.install "exe/codegen" => "codegen"
  end

  test do
    system "#{bin}/codegen", "--version"
  end
end