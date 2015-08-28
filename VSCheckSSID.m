//
//  VSCheckSSID.m
//  Conex
//
//  Created by PJ Vea on 8/27/15.
//  Copyright (c) 2015 Vea Software. All rights reserved.
//

#import "VSCheckSSID.h"

@implementation VSCheckSSID

- (BOOL)checkSingleSSIDName:(NSString *)name
{
    if ([name isEqualToString:[self fetchSSIDInfo]])
    {
        return YES;
    }
    return NO;
}

- (BOOL)checkManySSIDName:(NSArray *)nameArray
{
    for (int i = 0; i < [nameArray count]; i++)
    {
        NSString *ssidString = [nameArray objectAtIndex:i];
        
        if ([self checkSingleSSIDName:ssidString])
        {
            return YES;
        }
    }
    return NO;
}

- (NSString *)fetchSSIDInfo
{
    NSArray *interfaceNames = CFBridgingRelease(CNCopySupportedInterfaces());
    
    NSString *returnString = [[NSString alloc] init];
    for (NSString *interfaceName in interfaceNames)
    {
        NSDictionary *SSIDInfo = CFBridgingRelease(CNCopyCurrentNetworkInfo((__bridge CFStringRef)interfaceName));
        
        NSDictionary *dict = ( NSDictionary*) SSIDInfo;
        NSString* ssid = [dict objectForKey:@"SSID"];
        returnString = [ssid description];
//        NSLog(@"%@", returnString);
        
        BOOL isNotEmpty = (SSIDInfo.count > 0);
        if (isNotEmpty)
        {
            break;
        }
    }
    return returnString;
}

@end
