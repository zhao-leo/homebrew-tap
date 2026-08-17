# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ext4fuseT < Formula
  desc "EXT4 implementation for FUSE, linked to fuse-t"
  homepage "https://github.com/zhao-leo/ext4fuse-t"
  url "https://github.com/zhao-leo/ext4fuse-t/releases/download/v0.2.0/extfuse_0.2.0.tar.gz"
  sha256 "496f6b3e425cf37ada4c4482ed7ecc8195516daa142adb43ffd78e1c38471bfb"
  license "GPL-2.0"

  depends_on cask: "fuse-t"

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://docs.brew.sh/rubydoc/Formula.html#std_configure_args-instance_method
    bin.install "ext4fuse"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ext4fuse-t`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
