/*
MIT License

Copyright (c) 2019 Bart Bilos

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
#ifndef STDIODEFS_H
#define STDIODEFS_H

#include <stdbool.h>
#include <stddef.h>

typedef struct sqlibcFILEops sqlibcFILEops_t;
typedef struct sqlibcFILE sqlibcFILE_t;

struct sqlibcFILE {
  int errno;
  const sqlibcFILEops_t *operations;
  const char *filename;
};

// seperate file operations, so we can use FILE in the operations
struct sqlibcFILEops {
  bool (*write)(sqlibcFILE_t *this, const void *buf, size_t len, size_t *written);
  bool (*read)(sqlibcFILE_t *this, void *buf, size_t len, size_t *read);
  // seek?
};

#endif