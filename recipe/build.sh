mkdir build
cd build

cmake \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_RTTI=ON \
  -DCLANG_INCLUDE_TESTS=OFF \
  -DCLANG_INCLUDE_DOCS=OFF \
  -DLLVM_INCLUDE_TESTS=OFF \
  -DLLVM_INCLUDE_DOCS=OFF \
  ..

make -j${CPU_COUNT}

export DESTDIR=${SRC_DIR}/install
mkdir -p ${DESTDIR}
make install DESTDIR=${DESTDIR}

cp -r ${DESTDIR}${PREFIX}/include ${PREFIX}
cp -r ${DESTDIR}${PREFIX}/lib ${PREFIX}
rm ${PREFIX}/lib/libclang.*
rm -r ${PREFIX}/lib/clang
