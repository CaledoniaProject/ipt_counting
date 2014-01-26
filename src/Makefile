CC     = clang
TARGET = ipt_check
SRC    = ipt-check.c

default:
	$(CC) $(SRC) -liptc -lip4tc -o $(TARGET)

clean:
	rm -f *.o $(TARGET)

run:
	sudo $(TARGET)
