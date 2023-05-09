# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Keypair < Formula
  desc ""
  homepage "https://github.com/keypairdev/keypair"
  version "0.0.10"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keypairdev/keypair/releases/download/v0.0.10/keypair_0.0.10_darwin_arm64.tar.gz"
      sha256 "b65be4c356d7bbe2796f349b6f7dbdacebf4de8d408f0e98247710c66ddb9cda"

      def install
        bin.install "keypair"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/keypairdev/keypair/releases/download/v0.0.10/keypair_0.0.10_darwin_amd64.tar.gz"
      sha256 "b5ddc143cb222c7a7b01dfff68b145cd41e1d8d277752bc1cccd13e7842de7f9"

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
