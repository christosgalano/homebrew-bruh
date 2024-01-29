# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BicepDocs < Formula
  desc "Command-line tool to generate documentation for Bicep templates"
  homepage "https://github.com/christosgalano/bicep-docs"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.0.1/bicep-docs_darwin_amd64.tar.gz"
      sha256 "0d1bfd7d0a86b971350bd7ab239d60ce7ef596ef00f460674fc32225b90696b6"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.0.1/bicep-docs_darwin_arm64.tar.gz"
      sha256 "e9acc307af9c5e1dfd61c1cb778c95891deeb10c358a06e410351ffc5870d71f"

      def install
        bin.install "bicep-docs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.0.1/bicep-docs_linux_arm64.tar.gz"
      sha256 "f2ec642a925f43af31a833064afcf141dacc58eb82a346cbf2d02cdaacf361ea"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.0.1/bicep-docs_linux_arm.tar.gz"
      sha256 "5cfa9cf6e4c83d50107a9272d2f5a9fd8ac56f5c73bb3063e02f549630fee534"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.0.1/bicep-docs_linux_amd64.tar.gz"
      sha256 "0d32d47c366b49ff7c9cfbb3f968c26c24b7f81e6196b5764b9fa364555bc46e"

      def install
        bin.install "bicep-docs"
      end
    end
  end

  test do
    system "#{bin}/bicep-docs", "--help"
  end
end
