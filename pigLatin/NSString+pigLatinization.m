//
//  NSString+pigLatinization.m
//  pigLatin
//
//  Created by Arsalan Vakili on 2015-08-08.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "NSString+pigLatinization.h"

@implementation NSString (pigLatinization)

-(NSString *)stringByPigLatinization{
    NSString *string = @"aeiouAEIOU";
    
    NSRange range = NSMakeRange(0, [self length]);

    
    
    
    NSCharacterSet *vowels= [NSCharacterSet characterSetWithCharactersInString:string];
    
    
    
    NSRange vowelLocation = [self rangeOfCharacterFromSet:vowels options:0 range:range];
    
    if (vowelLocation.location == NSNotFound) {
        return [self stringByAppendingString:@"ay"];
    }
    if (vowelLocation.location > 0) {
        NSString *firstString = [[NSString alloc]init];
        NSRange range1 = NSMakeRange(0, vowelLocation.location);
        firstString = [self substringWithRange:range1];
        NSString *secondString = [[NSString alloc]init];
        NSRange range2 = NSMakeRange(vowelLocation.location, self.length - vowelLocation.location);
        secondString = [self substringWithRange:range2];
        
        NSString *finalString = [[NSString alloc]init];
        finalString = [finalString stringByAppendingString:secondString];
        finalString = [finalString stringByAppendingString:firstString];
        finalString = [finalString stringByAppendingString:@"ay"];
        
        return finalString;
    }
    else {
    
        return [self stringByAppendingString:@"yay"];
    }
}

@end
