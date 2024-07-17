#ifndef RUAPUWrapper_h
#define RUAPUWrapper_h

#import <Foundation/Foundation.h>

#define RUAPU_IMPLEMENTATION
#include "ruapu.h"

@interface RUAPUWrapper : NSObject

+ (void)initRUAPU;
+ (BOOL)supportsISA:(NSString *)isa;
+ (NSArray<NSString *> *)supportedISAs;

@end

#endif
