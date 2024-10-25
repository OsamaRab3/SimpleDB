# Makefile for building and running program specified by the 'file' variable.

CXX = g++
CXXFLAGS = -Wall -O2
SRC = $(file).cpp  
TARGET = $(file)  


all: $(TARGET)


$(TARGET): $(SRC)
	@$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET)


run: $(TARGET)
	@./$(TARGET)
	@ rm $(TARGET)
	


.PHONY: all run  
