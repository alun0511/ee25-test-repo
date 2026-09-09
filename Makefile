# Application target
TARGET := firmware

# C++ compiler.
CXX_COMPILER := g++

# C++ compiler flags.
CXX_FLAGS := -Wall -Werror -std=c++17 -Iinclude

# Source files.
SRC_FILES := main.cpp \

# Build and run the target by default
default: build run

build:
	@$(CXX_COMPILER) $(SRC_FILES) -o $(TARGET) $(CXX_FLAGS)
run:
	@./$(TARGET)

clean:
	@rm -f $(TARGET)
