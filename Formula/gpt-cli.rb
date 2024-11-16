class GptCli < Formula
  desc 'A sample GPT CLI tool with pretty responses'
  homepage 'https://github.com/saksham-sharma-99/gpt-cli'
  url 'https://github.com/saksham-sharma-99/gpt-cli/archive/v1.0.0.tar.gz'
  sha256 '8092e99d8448f6b2ddcab94ad47cd04666c7836592ddbed4124a935afd690707'

  depends_on 'node'

  def install
    bin.install 'bin/index.js' => 'gpt-cli'
    chmod '+x', bin / 'gpt-cli'
  end

  test do
    system "#{bin}/gpt-cli", '--help'
  end
end
