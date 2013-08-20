//
//  CheckNetwork.m
//  NetWorkDemo
//
//  Created by mino on 11-7-18.
//  Copyright 2011 gdkxjszyxy. All rights reserved.
//

#import "CheckNetwork.h"
#import "Reachability.h"
@implementation CheckNetwork
+(BOOL)isExistenceNetwork
{
	BOOL isExistenceNetwork;
	Reachability *r = [Reachability reachabilityWithHostName:@"www.apple.com"];
    switch ([r currentReachabilityStatus]) {
        case NotReachable:
			isExistenceNetwork=FALSE;
			//   NSLog(@"娌℃湁缃戠粶");
            break;
        case ReachableViaWWAN:
			isExistenceNetwork=TRUE;
			//   NSLog(@"姝ｅ湪浣跨敤3G缃戠粶");
            break;
        case ReachableViaWiFi:
			isExistenceNetwork=TRUE;
			//  NSLog(@"姝ｅ湪浣跨敤wifi缃戠粶");        
            break;
    }
	if (!isExistenceNetwork) {
		UIAlertView *myalert = [[UIAlertView alloc] initWithTitle:@"网络状态" message:@"网络不存在" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil,nil];
		[myalert show];
		[myalert release];
	}
	return isExistenceNetwork;
}
@end
