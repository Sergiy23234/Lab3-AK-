SRC = $(wildcard *.c)
NAM = $(patsubst %.c, %.o, $(SRC))
LIB = libMyProdlib.a

SRC_LIB = my_lib.c
OBJ_LIB = $(patsubst %.c, %.o, $(SRC_LIB))

.PHONY: all clean

all: $(TARGET) $(LIB)

$(PRJ) : $(NAM)
	$(CC) $(NAM) -o $(PRJ)

$(LIB) : $(OBJ_LIB)
	ar rcs $@ $^

%.o : %.c
	$(CC) -c $< -o $@

clean :
	rm $(PRJ)*.o

 

