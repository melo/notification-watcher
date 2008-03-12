OBJS=src/main.o src/MyListener.o
CFLAGS=-g

all: notification_watcher

notification_watcher: $(OBJS)
	gcc $(OBJS) -o notification_watcher  -framework Foundation

clean:
	rm -f $(OBJS) notification_watcher
