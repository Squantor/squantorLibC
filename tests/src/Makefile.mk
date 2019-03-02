# project settings
BIN_NAME = sqlibc_test
C_SOURCES = src/sqlibc_tests.c \
src/test_strlen.c src/test_strto.c src/test_strtok.c
CXX_SOURCES = 
S_SOURCES =
INCLUDES = -Iinc -I../inc
COMPILE_C_FLAGS += -std=gnu11 -Wall -Wextra
COMPILE_CXX_FLAGS += -std=c++17 -Wall -Wextra
COMPILE_ASM_FLAGS += -c -x assembler-with-cpp
LINK_FLAGS += -flto -Xlinker --gc-sections -Xlinker -print-memory-usage
RLIBDIR = -L"../bin/PC/release"
RLIBS = -lsqlibc
DLIBDIR = -L"../bin/PC/debug"
DLIBS = -lsqlibc