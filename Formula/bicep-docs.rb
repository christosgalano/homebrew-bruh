# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BicepDocs < Formula
  desc "Command-line tool to generate documentation for Bicep templates"
  homepage "https://github.com/christosgalano/bicep-docs"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.1.0/bicep-docs_darwin_arm64.tar.gz"
      sha256 "8e3d66ab40adc05e5528e94446495e7949419b50a06a67f2c8b26551b1264988"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.1.0/bicep-docs_darwin_amd64.tar.gz"
      sha256 "acce617ef88ea83651176a808e21c652474bd67e656ae9701a24e0448e200e85"

      def install
        bin.install "bicep-docs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.1.0/bicep-docs_linux_amd64.tar.gz"
      sha256 "63f4e46a340583a3a513b73e5e00a866bd8ea13e561b59bd0a8aa93af2a144ff"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.1.0/bicep-docs_linux_arm.tar.gz"
      sha256 "7085fc0c751b7e9977bbee631a99a0e7b58031ba4e7499b43517e657a32b2220"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.1.0/bicep-docs_linux_arm64.tar.gz"
      sha256 "ba9499496efee81f56ac5fdabb44b53d6d8deacb8aa121d7ea07c839879f8a6f"

      def install
        bin.install "bicep-docs"
      end
    end
  end

  test do
    system "#{bin}/bicep-docs", "--help"
  end
end
