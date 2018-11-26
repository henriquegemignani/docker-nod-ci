FROM henriquegemignani/manylinux:x86_64

RUN curl -fSL https://github.com/squeaky-pl/centos-devtools/releases/download/7.2/gcc-7.2.0-binutils-2.29.1-x86_64.tar.bz2 \
    | tar xj

RUN wget https://cmake.org/files/v3.12/cmake-3.12.0-rc3-Linux-x86_64.sh \
    && bash cmake-3.12.0-rc3-Linux-x86_64.sh --skip-license --prefix=/usr/local/ \
    && rm -f cmake-3.12.0-rc3-Linux-x86_64.sh