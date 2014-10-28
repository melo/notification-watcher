OBJS=src/main.o src/MyListener.o
CC=gcc
CFLAGS=-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk
LDFLAGS=-Wl,-syslibroot,/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk

all: notification_watcher

notification_watcher: $(OBJS)
	gcc $(OBJS) $(LDFLAGS) -o notification_watcher  -framework Foundation

clean:
	rm -f $(OBJS) notification_watcher
