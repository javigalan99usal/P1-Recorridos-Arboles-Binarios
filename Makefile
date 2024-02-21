# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -g

# Source files
SRCS = arbol.c cola.c pila.c main.c

# Object files
OBJS = $(SRCS:.c=.o)

# Executable
TARGET = ejercicio1

# Default target
all: $(TARGET)

# Compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Link object files into executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

# Clean up object files and executable
clean:
	rm -f $(OBJS) $(TARGET)
