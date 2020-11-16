FROM quay.io/pypa/manylinux2010_x86_64

RUN curl -fSL https://github.com/Kitware/CMake/releases/download/v3.18.4/cmake-3.18.4-Linux-x86_64.sh -o cmake-installer.sh \
    && bash cmake-installer.sh --skip-license --prefix=/usr/local/ \
    && rm -f cmake-installer.sh
