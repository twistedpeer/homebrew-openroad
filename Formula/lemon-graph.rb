class LemonGraph < Formula
    desc "Library for Efficient Modeling and Optimization in Networks"
    homepage "https://lemon.cs.elte.hu/trac/lemon"
    sha256 "f829a87c357b193a97987293030cb086b8fc7ef000eac24899efd3b822f383d8"
    head "https://github.com/The-OpenROAD-Project/lemon-graph"
    url "https://github.com/The-OpenROAD-Project/lemon-graph/archive/refs/tags/1.3.1.tar.gz"
    version "1.3.1"
    license "BSL-1.0"

    depends_on "cmake" => :build

    def install
        system "/Applications/CMake.app/Contents/bin/cmake", "-B", "build", "-DLEMON_ENABLE_SOPLEX=FALSE", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "."
        system "/Applications/CMake.app/Contents/bin/cmake", "--build", "build", "-j", "--target", "install"
    end
end
