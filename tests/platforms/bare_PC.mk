# platform settings for PC's with GCC and NO standard libraries
TOOLCHAIN_PREFIX =
C_SOURCES += src/00_start.c src/_exit.c
S_SOURCES += src/startup.s
COMPILE_C_FLAGS += -nostdlib -fomit-frame-pointer -fno-stack-protector -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-unroll-loops -fmerge-all-constants -fno-ident -mfpmath=sse -mfancy-math-387 -ffunction-sections -fdata-sections 
COMPILE_CXX_FLAGS +=
COMPILE_ASM_FLAGS += -c -x assembler-with-cpp
ALIBS +=
LINK_FLAGS += -static -nostdlib -z norelro --hash-style=sysv --build-id=none --gc-sections -nolibc
LINK_FLAGS_RELEASE += -s