CC = gcc
CFLAGS = -O3 -march=native -flto -fstack-protector-strong -D_FORTIFY_SOURCE=2 -fPIE
LDFLAGS = -pie -Wl,-z,relro,-z,now,-z,noexecstack
LIBS = -lsodium -lm
SRC = cipher.c
OUT = v11

all:
	$(CC) $(CFLAGS) $(SRC) -o $(OUT) $(LDFLAGS) $(LIBS)

clean:
	rm -f $(OUT)
