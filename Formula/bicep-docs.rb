# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BicepDocs < Formula
  desc "Command-line tool to generate documentation for Bicep templates"
  homepage "https://github.com/christosgalano/bicep-docs"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.3.2/bicep-docs_darwin_amd64.tar.gz"
      sha256 "95fdc2f3fd6bad98d07394b6d9406ebc14742c86887dd463274443e76fe31cd9"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.3.2/bicep-docs_darwin_arm64.tar.gz"
      sha256 "b41c4085018a863117c92d69a8069f2b76860719bb2628453e21c25b37a39f65"

      def install
        bin.install "bicep-docs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/christosgalano/bicep-docs/releases/download/v1.3.2/bicep-docs_linux_amd64.tar.gz"
        sha256 "49a9960d9506a1c546715cab5d9d70a2688a18ebba13f993313f6e9c97e95576"

        def install
          bin.install "bicep-docs"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/christosgalano/bicep-docs/releases/download/v1.3.2/bicep-docs_linux_arm.tar.gz"
        sha256 "8d93f33d0ba530b6a067ae6f7ce1a52eda0d8fbeee3fe040a475e7772362cdf5"

        def install
          bin.install "bicep-docs"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/christosgalano/bicep-docs/releases/download/v1.3.2/bicep-docs_linux_arm64.tar.gz"
        sha256 "40626e039f2abb2b33496157556c461af69783f2e90f0971808cfdb8f7208326"

        def install
          bin.install "bicep-docs"
        end
      end
    end
  end

  test do
    system "#{bin}/bicep-docs", "--help"
  end
end
