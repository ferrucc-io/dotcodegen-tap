class Dotcodegen < Formula
  desc "Generate tests for your code using LLMs"
  homepage "https://github.com/ferrucc-io/dotcodegen"
  url "https://github.com/ferrucc-io/dotcodegen/archive/main.tar.gz"
  version "0.1.4"
  sha256 "caedf383d7f797d5a914ddb03df840b170f7fe2e884c1ed363a8671634d22988"

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