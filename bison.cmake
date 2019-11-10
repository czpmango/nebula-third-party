ExternalProject_Add(
    bison
    URL http://ftp.gnu.org/gnu/bison//bison-3.0.5.tar.gz
    URL_HASH MD5=41ad57813157b61bfa47e33067a9d6f0
    PREFIX ${CMAKE_CURRENT_BINARY_DIR}/bison
    TMP_DIR ${CMAKE_CURRENT_BINARY_DIR}/bison/build-meta
    STAMP_DIR ${CMAKE_CURRENT_BINARY_DIR}/bison/build-meta
    DOWNLOAD_DIR ${CMAKE_CURRENT_BINARY_DIR}/download
    SOURCE_DIR ${CMAKE_CURRENT_BINARY_DIR}/bison/source
    CONFIGURE_COMMAND
        ${common_configure_envs}
        ./configure ${common_configure_args}
                    --quiet
    BUILD_COMMAND make -s -j${NCPU}
    BUILD_IN_SOURCE 1
    INSTALL_COMMAND make -s install -j${NCPU}
    LOG_BUILD 1
    LOG_INSTALL 1
)