//
//  main.m
//  Stockz
//
//  Created by Anthony Dagati on 10/3/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:1000] forKey:@"shares"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
    }
    return 0;
}

