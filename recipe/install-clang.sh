DESTDIR=${SRC_DIR}/install${PREFIX}
cp -r ${DESTDIR}/bin ${PREFIX}/
cp -r ${DESTDIR}/libexec ${PREFIX}/
cp -r ${DESTDIR}/share ${PREFIX}/
mkdir -p ${PREFIX}/lib
cp -r ${DESTDIR}/lib/clang ${PREFIX}/lib/
