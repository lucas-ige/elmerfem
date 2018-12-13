#SET(CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE STRING "")
SET(RESET_ELMER_REVISION TRUE CACHE BOOL "") 
SET(WITH_OpenMP TRUE CACHE BOOL "")
SET(MAKE_RPM_PACKAGE FALSE CACHE BOOL "")
SET(MAKE_DEB_PACKAGE FALSE CACHE BOOL "")
# SET(BLAS_LIBRARIES /usr/lib/libopenblas.so CACHE FILE "")
# SET(LAPACK_LIBRARIES /usr/lib/libopenblas.so CACHE FILE "")
# SET(ELMER_FEM_REVISION omp-test CACHE STRING "")
SET(WITH_LUA TRUE CACHE BOOL "")
SET(WITH_Zoltan TRUE CACHE BOOL "")
SET(CREATE_PKGCONFIG_FILE TRUE CACHE BOOL "")

SET(WITH_MPI TRUE CACHE BOOL "")  # TODO: test MPI too (nproc=2)
SET(MPI_TEST_MAX_PROC 4 CACHE STRING "")
