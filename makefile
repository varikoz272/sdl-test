CC = gcc
CXXC = g++
C_STD = -std=c99
TARGET = bin/main
INCLUDE = include/
LIB = lib/
LIBS_WIN = -lmingw32 -lSDL2main -lSDL2 -lglfw3 -lopengl32 -lgdi32
LIBS_LINUX = -lGL -lrt -ldl -lm -lX11 -lglfw
MAIN = glad.c main.cpp
OBJ = obj/
OBJS = obj/*.o


run : compile
	./bin/main

compile : compile_shader_reader
	$(CXXC) $(C_STD) -I $(INCLUDE) -o $(TARGET) $(MAIN) $(OBJS) $(LIBS_LINUX)

compile_shader_reader :
	$(CC) -c $(C_STD) -I $(INCLUDE) -o $(OBJ)shader_reader.o src/shader_reader.c
