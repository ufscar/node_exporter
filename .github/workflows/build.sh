targz="${NE_NAME}.tar.gz"
cd ..
mkdir "${NE_NAME}-${NE_VERSION}"
cp -a "${NE_NAME}/." "${NE_NAME}-${NE_VERSION}/"
tar -czvf "${HOME}/rpmbuild/SOURCES/${targz}" "${NE_NAME}-${NE_VERSION}"

cd "${NE_NAME}" || exit 1
make