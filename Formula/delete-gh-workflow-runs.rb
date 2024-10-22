# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DeleteGhWorkflowRuns < Formula
  desc "Command-line tool to generate documentation for Bicep templates"
  homepage "https://github.com/christosgalano/delete-gh-workflow-runs"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/christosgalano/delete-gh-workflow-runs/releases/download/v1.0.0/delete-gh-workflow-runs_darwin_amd64.tar.gz"
      sha256 "38b6918ba526453fb2f97c9d500c735519c583c95c474bd4239c1634cf1562e7"

      def install
        bin.install "delete-gh-workflow-runs"
      end
    end
    on_arm do
      url "https://github.com/christosgalano/delete-gh-workflow-runs/releases/download/v1.0.0/delete-gh-workflow-runs_darwin_arm64.tar.gz"
      sha256 "6c1db15cb89d0290e6552999c51c6c236a8bd67997d12394baf2115cbcd959d4"

      def install
        bin.install "delete-gh-workflow-runs"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/christosgalano/delete-gh-workflow-runs/releases/download/v1.0.0/delete-gh-workflow-runs_linux_amd64.tar.gz"
        sha256 "3622570ce1a09c18ec8cd4b30944eef38dd4f3e19041da4a38564c1db7174447"

        def install
          bin.install "delete-gh-workflow-runs"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/christosgalano/delete-gh-workflow-runs/releases/download/v1.0.0/delete-gh-workflow-runs_linux_arm.tar.gz"
        sha256 "7e89357c31a217f0e0e60eb279549d2c137e4784c20496dac014fce05fe40e96"

        def install
          bin.install "delete-gh-workflow-runs"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/christosgalano/delete-gh-workflow-runs/releases/download/v1.0.0/delete-gh-workflow-runs_linux_arm64.tar.gz"
        sha256 "3287c0b27c4a3f90e8f8ea6b7283f2c4602425f73fcbc4f7519c454d67b83721"

        def install
          bin.install "delete-gh-workflow-runs"
        end
      end
    end
  end

  test do
    system "#{bin}/delete-gh-workflow-runs", "--help"
  end
end
