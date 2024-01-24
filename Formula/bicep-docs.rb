# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BicepDocs < Formula
  desc "Command-line tool to generate documentation for Bicep templates"
  homepage "https://github.com/christosgalano/bicep-docs"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.0.0/bicep-docs_darwin_amd64.tar.gz"
      sha256 "238e5dde32b15b30e0a0dcca77ca67525e14bebbf7244afd0d2789a216dc4ec5"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.0.0/bicep-docs_darwin_arm64.tar.gz"
      sha256 "f6195e2a437542cbbb05e582fec5f8d61712c8bd86dda88f17bc2ff70b5b822d"

      def install
        bin.install "bicep-docs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.0.0/bicep-docs_linux_arm64.tar.gz"
      sha256 "e0c86db2c46a449d73bd8cbed6b2ee72d1b247d7c268d75c07e05f7773940028"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.0.0/bicep-docs_linux_arm.tar.gz"
      sha256 "f3f8a5ca597949ddeadfeeb817ca87b445b85bb246b637b52447fbc790c44f92"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.0.0/bicep-docs_linux_amd64.tar.gz"
      sha256 "6983cf3e693b182536789e0fa02e8c97acc8562c4d1381ec4e783074e9428760"

      def install
        bin.install "bicep-docs"
      end
    end
  end

  test do
    system "#{bin}/bicep-docs", "--help"
  end
end
