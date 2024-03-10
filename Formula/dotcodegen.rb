class Dotcodegen < Formula
  desc "Generate tests for your code using LLMs"
  homepage "https://github.com/ferrucc-io/dotcodegen"
  url "https://github.com/ferrucc-io/dotcodegen/archive/main.tar.gz"
  version "0.1.1"
  sha256 "80175adae5faa9bb7bad39c2b9d3fe8470f4d06029db5fa0bcdc10fa0a2ef916"

  depends_on "ruby@3.3"

  def install
    system "gem", "build", "dotcodegen.gemspec"
    system "gem", "install", "dotcodegen-0.1.1.gem"
    bin.install "exe/run" => "codegen"
  end

  test do
    system "#{bin}/codegen", "--version"
  end
end