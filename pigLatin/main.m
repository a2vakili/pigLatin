//
//  main.m
//  pigLatin
//
//  Created by Arsalan Vakili on 2015-06-13.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+pigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"What would like to convert in to pig Latin");
        while (true) {
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
             inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSArray *words = [inputString componentsSeparatedByString:@" "];
            NSString *myString = [[NSString alloc]init];
            NSString *pigLatinString = [[NSString alloc]init];
            pigLatinString = @"";
            
            for (int i = 0; i < [words count]; i++) {
                myString = words[i];
                myString = [myString stringByPigLatinization];
                pigLatinString = [[pigLatinString stringByAppendingString:myString]stringByAppendingString:@" "];
            }
            NSLog(@"you pig latin word is %@",pigLatinString);
            
        }
    }
    return 0;
}
