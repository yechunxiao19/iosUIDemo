//
//  MyDataSource.h
//  JsonDemo
//
//  Created by mino on 11-7-18.
//  Copyright 2011 gdkxjszyxy. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyDataSource : NSObject {
}
	+ (id)dataSource;

+ (NSDictionary *)fetchLibraryInformation;

+ (id)fetchJSONValueForURL:(NSURL *)url;
	@end
