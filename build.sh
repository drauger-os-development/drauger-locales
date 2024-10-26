#!/bin/bash
# Get list of directories to build
build_list=$(find * -maxdepth 0 -type d | grep -v "TEMPLATE")

# Build each directory
for each in $build_list; do
	cd "$each"
	echo "Building deb package for locale: $(ls etc/drauger-locales)..."
	./build.sh
	cd ..
	echo "Build complete!"
done

# Place all build artifacts in a central, well known folder
if [ ! -d build ]; then
	mkdir -v build
fi
mv -v *.deb build/
