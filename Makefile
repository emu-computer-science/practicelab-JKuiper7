#Joshua Kuiper Make File
CC = GCC
CFLAGS =
LDFLAGS = 
OBJFILES = driver.o file1.o file2.o
TARGET = makeFileTest
all : $(TARGET)

$(TARGET): $(OBJFILES)
	$(CC)$(CFLAGS) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

driver.o: driver.c headers.h
	$(CC) -c driver.c
	
file1.o: file1.c headers.h
	$(CC) -c file1.c
	
file2.o: file2.c headers.h
	$(CC) -c file2.c
	
.PHONY: clean

clean:
	rm -f $(OBJFILES) $(TARGET)
	