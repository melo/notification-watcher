
#import "MyListener.h"
#include <string.h>

@interface MyListener (Private)
- (void) p_iTunesPlayStatusChanged:(NSNotification *)theNotification;
@end

@implementation MyListener

- init
{
	if (self = [super init]) {
		[[NSDistributedNotificationCenter defaultCenter]
		    addObserver:self
		       selector:@selector(p_iTunesPlayStatusChanged:)
		    	     name:@"com.apple.iTunes.playerInfo"
		    		 object:nil
		];
	}
	return self;
}

- (void)dealloc
{
	[[NSDistributedNotificationCenter defaultCenter] removeObserver:self];
	[super dealloc];
}

- (void)p_iTunesPlayStatusChanged:(NSNotification *)theNotification
{
  const char *iTunesInfo = [[[theNotification userInfo] description] UTF8String];
  
  printf("%d\n%s\n", strlen(iTunesInfo), iTunesInfo);
}


@end
