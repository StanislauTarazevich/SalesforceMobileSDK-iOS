//
//  CSFChatterPhotoOutputTest.h
//  CoreSalesforce
//
//  Created automatically by Michael Nachbaur on 12/04/14.
//  Copyright (c) 2012 Salesforce.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#import "CSFChatterPhotoOutput.h"

@interface CSFChatterPhotoOutputTest : XCTestCase

@end

@implementation CSFChatterPhotoOutputTest

- (void)testInitializer {
    NSString *fn = [[NSBundle bundleForClass:self.class] pathForResource:@"CSFChatterPhotoOutput" ofType:@"json"];
    NSData *jsonData = [NSData dataWithContentsOfFile:fn]; 
    NSError *error = nil;
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];

    XCTAssertNil(error);

    CSFChatterPhotoOutput *model = [[CSFChatterPhotoOutput alloc] initWithJSON:json context:nil];
    XCTAssertNotNil(model, @"Output object should not be nil");

    CSFChatterPhotoOutput *model2 = [[CSFChatterPhotoOutput alloc] initWithJSON:json context:nil];
    XCTAssertEqualObjects(model, model2, @"Output objects should be equal");
    XCTAssertTrue([model isEqual:model2], @"Output objects should pass isEqual");
    XCTAssertTrue([model isEqualToOutput:model2], @"Output objects should pass isEqualToOutput");
}

@end