.PHONY: all compile generate clean

UNITY_ROOT = c:/TDD_projects/Unity

# Dependencies / Input Files
SRC_FILES := $(wildcard *.c) $(wildcard pattern)
BINS := $(SRC_FILES:%.c=%)
INC_DIRS = -Isrc -I$(UNITY_ROOT)/src
UNITY_C := $(UNITY_ROOT)/src/unity.c
# Output File:
TARGET_EXTENSION := .exe
TARGET_BASE := DumbExample
TARGET = Test_$(TARGET_BASE)$(TARGET_EXTENSION)

# Compiler Setup
CC := gcc
LINKERFLAG := -lm
CFLAGS=-std=c99

all: compile 
 compile:
 		
		@echo "Compiling.."
		$(CC) $(CFLAGS) $(SRC_FILES) $(UNITY_C) -o $(TARGET)

generate:
		
clean:	
		@echo "Cleaning up..."
		@echo "Done"
	