CC=c++
TARGET=ipxnet
SRCFILES=main.cpp ipxserver.cpp
LIBS=-lSDL_net -lSDL

all: $(TARGET)

$(TARGET): $(SRCFILES)
	$(CC) -Wall $(CXXFLAGS) $(SRCFILES) $(LIBS) -o $(TARGET)

clean:
	rm -f $(TARGET)
