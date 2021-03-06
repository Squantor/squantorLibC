# project settings
BIN_NAME = libsqlibc
C_SOURCES = src/string/strlen.c src/string/strnlen.c \
src/string/strtok.c src/string/strcmp.c src/string/strcpy.c \
src/string/strncpy.c src/string/strncmp.c src/string/memchr.c \
src/string/memcmp.c src/string/memcpy.c src/string/memmove.c \
src/string/memset.c src/string/strchr.c src/string/strcat.c \
src/string/strpbrk.c src/string/strrchr.c src/string/strspn.c \
src/string/strstr.c \
src/stdlib/strto.c src/stdlib/strtoul.c src/stdlib/strtol.c \
src/internal/ctypetable.c src/internal/libc_strings.c \
src/internal/strto_pre.c src/internal/strto_main.c \
src/ctype/isalnum.c src/ctype/isalpha.c \
src/ctype/isascii.c src/ctype/isblank.c \
src/ctype/iscntrl.c src/ctype/isdigit.c \
src/ctype/isgraph.c src/ctype/islower.c \
src/ctype/isprint.c src/ctype/isprint.c \
src/ctype/ispunct.c src/ctype/isspace.c \
src/ctype/isupper.c src/ctype/isxdigit.c \
src/ctype/tolower.c src/ctype/toupper.c \
src/errno/errno.c
INCLUDES = -Iinc -Iinc_internal
COMPILE_C_FLAGS += -std=gnu11 -Wall -Wextra -Wno-main 
COMPILE_CXX_FLAGS += -std=c++17 -Wall -Wextra -Wno-main
COMPILE_ASM_FLAGS += -c -x assembler-with-cpp
LINK_FLAGS += -flto -nostdlib -Xlinker --gc-sections -Xlinker -print-memory-usage
