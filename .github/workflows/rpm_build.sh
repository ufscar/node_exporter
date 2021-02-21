orig=$(pwd)
pwd
ls
cd ..
pwd
ls
cp "${NE_NAME}" "${HOME}/rpmbuild/BUILDROOT/${NE_NAME}"
cp "lib/systemd/${NE_NAME}.service" ~/rpmbuild/SOURCES/
cp "packages/rpm/${NE_NAME}.spec" ~/rpmbuild/SPECS/
cd ~/rpmbuild/SPECS || exit 1
rpmbuild -bb "${NE_NAME}.spec"
f=$(ls "$HOME/rpmbuild/RPMS/x86_64/")
cp "$HOME/rpmbuild/RPMS/x86_64/$f" "$orig/RPM/${NE_NAME}.rpm"
rm -f "$HOME/rpmbuild/RPMS/x86_64/$f"
cd "$orig" || exit 1