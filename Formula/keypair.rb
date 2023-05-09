# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Keypair < Formula
  desc ""
  homepage "https://github.com/keypairdev/keypair"
  version "0.0.11"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keypairdev/releases/raw/main/keypair_0.0.11_darwin_arm64.tar.gz"
      sha256 "1a30ad4553445e43987ce4e562cc0dc7f17f097049adfe49776a789d3f76eaa1"

      def install
        bin.install "keypair"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/keypairdev/releases/raw/main/keypair_0.0.11_darwin_amd64.tar.gz"
      sha256 "0a269e01bed58906498a534e543db9ce222944c65a6343835f2e6fff655a07b4"

      def install
        bin.install "keypair"
      end
    end
  end

  service do
    run [opt_bin/"keypair", "server"]
    keep_alive true
    log_path "#{var}/log/keypair.log"
    error_log_path "#{var}/log/keypair.log"
  end
end
