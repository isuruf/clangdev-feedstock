DESTDIR=${SRC_DIR}/install${PREFIX}
mkdir -p ${PREFIX}/lib
cp ${DESTDIR}/lib/libclang.* ${PREFIX}/lib
