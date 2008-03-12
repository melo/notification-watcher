OBJS=src/main.o src/MyListener.o
CFLAGS=-g

all: notification_watcher

notification_watcher: $(OBJS)
	ld -framework Foundation -lc $(OBJS) -o notification_watcher

clean:
	rm -f $(OBJS) notification_watcher
