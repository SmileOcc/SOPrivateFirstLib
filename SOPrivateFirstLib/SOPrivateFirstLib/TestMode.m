

#import "TestMode.h"

@implementation TestMode

+ (NSString *)testName:(NSString *)name {
    return [NSString stringWithFormat:@"test:----%@",name];
}
@end
