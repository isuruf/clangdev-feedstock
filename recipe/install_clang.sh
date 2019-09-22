#!/bin/bash
set -x -e
cd ${SRC_DIR}/build
make install DESTDIR=${PWD}/install
cd "${PWD}/install/${PREFIX}"
cp bin/clang-${PKG_VERSION:0:1} ${PREFIX}/bin/
cp lib/libclang-cpp* ${PREFIX}/lib/
cp -Rf lib/clang ${PREFIX}/lib/

ln -s "${PREFIX}/bin/clang-${PKG_VERSION:0:1}" "${PREFIX}/bin/clang-cl"
ln -s "${PREFIX}/bin/clang-${PKG_VERSION:0:1}" "${PREFIX}/bin/clang-cpp"
ln -s "${PREFIX}/bin/clang-${PKG_VERSION:0:1}" "${PREFIX}/bin/clang"
