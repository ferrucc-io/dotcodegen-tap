class Dotcodegen < Formula
  desc "Generate tests for your code using LLMs"
  homepage "https://github.com/ferrucc-io/dotcodegen"
  url "https://github.com/ferrucc-io/dotcodegen/archive/main.tar.gz"
  version "0.1.1"
  sha256 "2b21c1740e37dd054cab3f0fa573797743739d8604116dfe636cb74a0e2e4f5f"

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