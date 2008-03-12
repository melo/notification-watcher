#import "Foundation/Foundation.h"
#import "MyListener.h"

int main () {
  MyListener *theListener = [[MyListener alloc] init];
  
  [[NSRunLoop currentRunLoop] run];
  
  return 0;
}
