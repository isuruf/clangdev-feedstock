export DESTDIR=${SRC_DIR}/install${PREFIX}

cp -r ${DESTDIR}/include ${PREFIX}
cp -r ${DESTDIR}/lib ${PREFIX}
rm ${PREFIX}/lib/libclang.*
rm -r ${PREFIX}/lib/clang
