install:
    test -f configure || sh autogen.sh
    test -f Makefile || ./configure --prefix="$HOME/.local" --enable-sixel --enable-utf8proc
    make -j8
    make install
