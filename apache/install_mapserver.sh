
export CC="ccache gcc"
export CXX="ccache g++"

curl http://download.osgeo.org/proj/proj-6.2.0.tar.gz > proj-6.2.0.tar.gz
tar xzf proj-6.2.0.tar.gz
mv proj-6.2.0 proj
(cd proj/data && curl http://download.osgeo.org/proj/proj-datumgrid-1.8.tar.gz > proj-datumgrid-1.8.tar.gz && tar xvzf proj-datumgrid-1.8.tar.gz)
(cd proj; CFLAGS='-O2 -DPROJ_RENAME_SYMBOLS' CXXFLAGS='-O2 -DPROJ_RENAME_SYMBOLS' ./configure --disable-static --prefix=/usr/local && CCACHE_CPP2=yes make -j2 && make -j3 install)
rm -f /usr/include/proj_api.h
make cmakebuild MFLAGS="-j2" CMAKE_C_FLAGS="-O2 -DPROJ_RENAME_SYMBOLS" CMAKE_CXX_FLAGS="-O2 -DPROJ_RENAME_SYMBOLS" EXTRA_CMAKEFLAGS="-DPROJ_INCLUDE_DIR=/usr/local/include -DPROJ_LIBRARY=/usr/local/lib/libproj.so.15"
