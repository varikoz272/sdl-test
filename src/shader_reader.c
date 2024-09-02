#include <stdlib.h>
#include <stdio.h>
#include "../include/glad/glad.h"
#include "../include/GLFW/glfw3.h"

#ifndef SHADER_READER_H_
#define SHADER_READER_H_


char *read_all_file(char file_name[]) {
    FILE *f = fopen(file_name, "rb");
    
    if (!f) return NULL;

    fseek(f, 0, SEEK_END);
    long length = ftell(f);
    fseek(f, 0, SEEK_SET);
    
    char *out_buffer = (char*) malloc(length);
    if (!out_buffer) return NULL;

    fread(out_buffer, 1, length, f);

    fclose(f);

    return out_buffer;
}





#endif /* SHADER_READER_H_ */
