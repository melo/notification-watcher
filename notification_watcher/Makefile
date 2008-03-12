OBJS=src/main.o src/MyListener.o
CC=gcc
CFLAGS=-isysroot /Developer/SDKs/MacOSX10.4u.sdk -arch ppc -arch i386
LDFLAGS=-Wl,-syslibroot,/Developer/SDKs/MacOSX10.4u.sdk -arch ppc -arch i386

all: notification_watcher

notification_watcher: $(OBJS)
	gcc $(OBJS) $(LDFLAGS) -o notification_watcher  -framework Foundation

clean:
	rm -f $(OBJS) notification_watcher
