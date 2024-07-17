#import "RUAPUWrapper.h"

@implementation RUAPUWrapper

+ (void)initRUAPU {
    ruapu_init();
}

+ (BOOL)supportsISA:(NSString *)isa {
    return ruapu_supports([isa cStringUsingEncoding:NSUTF8StringEncoding]) != 0;
}

+ (NSArray<NSString *> *)supportedISAs {
    const char* const* isas = ruapu_rua();
    NSMutableArray *result = [NSMutableArray array];
    
    while (*isas) {
        [result addObject:[NSString stringWithUTF8String:*isas]];
        isas++;
    }
    
    return result;
}

@end
