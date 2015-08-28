//
//  VSCheckSSID.h
//  Conex
//
//  Created by PJ Vea on 8/27/15.
//  Copyright (c) 2015 Vea Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <ifaddrs.h>
#include <net/if.h>
#include <netdb.h>
@import SystemConfiguration.CaptiveNetwork;

@interface VSCheckSSID : NSObject

- (BOOL)checkSingleSSIDName:(NSString *)name;
- (BOOL)checkManySSIDName:(NSArray *)nameArray;

@end
