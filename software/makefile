EXEC 		= extract_shapelets
CC			= gcc
CFLAGS 		= -lm -Wall -pthread -O0 -std=gnu99 -fopenmp  #add -g for debugging
DEFINES		= -DUSE_ZSCORE #add program related #define statements
SRC_DIR 	= ./src
BUILD_DIR 	= ./build
BIN_DIR 	= ./bin
SOURCES		= shapelet_transform.c extract_shapelets.c

# create the obj variable by substituting the extension of the sources
# and adding a path
_OBJ = $(SOURCES:.c=.o) #changes the .c extension to .o extension from source file list
OBJ = $(patsubst %,$(BUILD_DIR)/%,$(_OBJ))

all: $(BIN_DIR)/$(EXEC)

$(BIN_DIR)/$(EXEC): $(OBJ)
	$(CC) $(DEFINES) -o $@ $^ $(CFLAGS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c 
	$(CC) $(DEFINES) -c -o $@ $< $(CFLAGS)

.PHONY: clean
clean:
	$(RM) *.o $(BIN_DIR)/$(EXEC) $(OBJ)
.PHONY: clean_win
clean_win: 
	del *.o *.exe
