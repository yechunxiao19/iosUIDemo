//
//  MyDataSource.m
//  JsonDemo
//
//  Created by mino on 11-7-18.
//  Copyright 2011 gdkxjszyxy. All rights reserved.
//

#import "MyDataSource.h"
#import "SBJson.h"

@implementation MyDataSource
+ (id)dataSource
{
	NSString* JSONString = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"]
													 encoding:NSUTF8StringEncoding error:nil];
	return [JSONString JSONValue];
}

+ (NSDictionary *)fetchLibraryInformation

{
	
	NSString *urlString = [NSString stringWithFormat:@"http://wangjun.easymorse.com/wp-content/video/hello.jison"];
	
	NSURL *url = [NSURL URLWithString:urlString];
	
	NSLog(@"fetching library data");
	
	return [self fetchJSONValueForURL:url];
	
}

+ (id)fetchJSONValueForURL:(NSURL *)url

{
	
	NSString *jsonString = [[NSString alloc] initWithContentsOfURL:url
							
														  encoding:NSUTF8StringEncoding error:nil];
	
	id jsonValue = [jsonString JSONValue];
	
	[jsonString release];
	
	return jsonValue;
	
}
@end
