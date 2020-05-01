#import "Converter.h"

// Do not change
NSString *KeyPhoneNumber = @"phoneNumber";
NSString *KeyCountry = @"country";

@implementation PNConverter
- (NSDictionary*)converToPhoneNumberNextString:(NSString*)string; {
    // good luck
    NSUInteger stringLength = [string length];
  
    NSString *threee = nil ;
    threee = stringLength >= 3 ? [string substringToIndex:3] : [string substringToIndex:1];
    NSArray *arrayThreeeForNine = @[@375, @380,@992,@994,@996,@998];
    NSArray *arrayThreeeForEight = @[@373, @374,@993];
    NSArray *eightNine = [arrayThreeeForNine arrayByAddingObjectsFromArray:arrayThreeeForEight];
    NSMutableString *buffStr = [NSMutableString stringWithString:string];
    id objectToSearch = [NSNumber numberWithInt:[threee intValue]];
    NSMutableString* codeString = [NSMutableString string];
 
    if ([arrayThreeeForNine containsObject:objectToSearch]) {
    
    switch (stringLength) {
        case 11 ... 12:
            [buffStr insertString:@"+" atIndex:0];
            [buffStr insertString:@" " atIndex:4];
            [buffStr insertString:@"(" atIndex:5];
            [buffStr insertString:@")" atIndex:8];
            [buffStr insertString:@" " atIndex:9];
            [buffStr insertString:@"-" atIndex:13];
            [buffStr insertString:@"-" atIndex:16];
            break;
        case 9 ... 10:
            [buffStr insertString:@"+" atIndex:0];
            [buffStr insertString:@" " atIndex:4];
            [buffStr insertString:@"(" atIndex:5];
            [buffStr insertString:@")" atIndex:8];
            [buffStr insertString:@" " atIndex:9];
            [buffStr insertString:@"-" atIndex:13];
            break;
        case 7 ... 8:
            [buffStr insertString:@"+" atIndex:0];
            [buffStr insertString:@" " atIndex:4];
            [buffStr insertString:@"(" atIndex:5];
            [buffStr insertString:@")" atIndex:8];
            [buffStr insertString:@" " atIndex:9];//?
            break;
        case 6:
            [buffStr insertString:@"+" atIndex:0];
            [buffStr insertString:@" " atIndex:4];
            [buffStr insertString:@"(" atIndex:5];
            [buffStr insertString:@")" atIndex:8];
            [buffStr insertString:@" " atIndex:9];
            break;
        case 5:
            [buffStr insertString:@"+" atIndex:0];
            [buffStr insertString:@" " atIndex:4];
            [buffStr insertString:@"(" atIndex:5];
            break;
        case 4:
            [buffStr insertString:@"+" atIndex:0];
            [buffStr insertString:@" " atIndex:4];
            [buffStr insertString:@"(" atIndex:5];
            break;
        case 1 ... 3:
            [buffStr insertString:@"+" atIndex:0];
            break;
        default:
            [buffStr insertString:@"+" atIndex:0];
            [buffStr insertString:@" " atIndex:4];
            [buffStr insertString:@"(" atIndex:5];
            [buffStr insertString:@")" atIndex:8];
            [buffStr insertString:@" " atIndex:9];
            [buffStr insertString:@"-" atIndex:13];
            [buffStr insertString:@"-" atIndex:16];
            NSRange range = { 19, 0};
            [buffStr deleteCharactersInRange:NSMakeRange(range.location, [buffStr length] - range.location)];
            break;
    }
    
    }
    
    if ([arrayThreeeForEight containsObject:objectToSearch]) {
            
        switch (stringLength) {
                
            case 9 ... 11:
                [buffStr insertString:@"+" atIndex:0];
                [buffStr insertString:@" " atIndex:4];
                [buffStr insertString:@"(" atIndex:5];
                [buffStr insertString:@")" atIndex:8]; //@"+374 (12) 345-678"
                [buffStr insertString:@" " atIndex:9];
                [buffStr insertString:@"-" atIndex:13];
                break;
            case 6 ... 8:
                [buffStr insertString:@"+" atIndex:0];
                [buffStr insertString:@" " atIndex:4];
                [buffStr insertString:@"(" atIndex:5];
                [buffStr insertString:@")" atIndex:8];
                [buffStr insertString:@" " atIndex:9];
                break;
            case 4 ... 5:
                [buffStr insertString:@"+" atIndex:0];
                [buffStr insertString:@" " atIndex:4];
                [buffStr insertString:@"(" atIndex:5];
                break;
            case 1 ... 3:
                [buffStr insertString:@"+" atIndex:0];
                break;
            default:
                [buffStr substringToIndex:11];
                [buffStr insertString:@"+" atIndex:0];
                [buffStr insertString:@" " atIndex:4];
                [buffStr insertString:@"(" atIndex:5];
                [buffStr insertString:@")" atIndex:8];
                [buffStr insertString:@" " atIndex:9];
                [buffStr insertString:@"-" atIndex:13];
                NSRange range = { 17, 0};
                [buffStr deleteCharactersInRange:NSMakeRange(range.location, [buffStr length] - range.location)];
                break;
        }
        
        }
    if ([[string substringToIndex:1] isEqualToString:@"7"]) {
            
        switch (stringLength) {
            case 10 ... 11 :
                [buffStr insertString:@"+" atIndex:0];
                [buffStr insertString:@" " atIndex:2];
                [buffStr insertString:@"(" atIndex:3];
                [buffStr insertString:@")" atIndex:7];
                [buffStr insertString:@" " atIndex:8];
                [buffStr insertString:@"-" atIndex:12];
                [buffStr insertString:@"-" atIndex:15];
                break;
            case 8 ... 9 :
                [buffStr insertString:@"+" atIndex:0];
                [buffStr insertString:@" " atIndex:2];
                [buffStr insertString:@"(" atIndex:3];
                [buffStr insertString:@")" atIndex:7];
                [buffStr insertString:@" " atIndex:8];
                [buffStr insertString:@"-" atIndex:12];
                break;
            case 7 :
                [buffStr insertString:@"+" atIndex:0];
                [buffStr insertString:@" " atIndex:2];
                [buffStr insertString:@"(" atIndex:3];
                [buffStr insertString:@")" atIndex:7];
                [buffStr insertString:@" " atIndex:8];
                break;
                case 6:
                [buffStr insertString:@"+" atIndex:0];
                [buffStr insertString:@" " atIndex:4];
                [buffStr insertString:@"(" atIndex:5];
                [buffStr insertString:@")" atIndex:8];
                [buffStr insertString:@" " atIndex:9];
                break;
                case 5:
                [buffStr insertString:@"+" atIndex:0];
                [buffStr insertString:@" " atIndex:4];
                [buffStr insertString:@"(" atIndex:5];
                [buffStr insertString:@")" atIndex:8];
                break;
                case 3 ... 4:
                [buffStr insertString:@"+" atIndex:0];
                [buffStr insertString:@" " atIndex:2];
                [buffStr insertString:@"(" atIndex:3];
                break;
                case 2:
                [buffStr insertString:@"+" atIndex:0];
                [buffStr insertString:@" " atIndex:2];
                [buffStr insertString:@"(" atIndex:3];
                break;
                case 1:
                [buffStr insertString:@"+" atIndex:0];
                break;
            default:
                [buffStr insertString:@"+" atIndex:0];
                [buffStr insertString:@" " atIndex:2];
                [buffStr insertString:@"(" atIndex:3];
                [buffStr insertString:@")" atIndex:7];
                [buffStr insertString:@" " atIndex:8];
                [buffStr insertString:@"-" atIndex:12];
                [buffStr insertString:@"-" atIndex:15];
                NSRange range = { 18, 0};
                [buffStr deleteCharactersInRange:NSMakeRange(range.location, [buffStr length] - range.location)];
                break;
        }
        
        }
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys: @"RU", @(7), @"KZ", @(77), @"MD" ,@(373),  @"AM", @(374), @"BY", @375, @"UA", @(380), @"TJ", @(992), @"TM", @(993), @"AZ", @(994), @"KG", @(996), @"UZ", @998, nil];
    
    if ([[string substringToIndex:1] isEqualToString:@"7"]) {
        codeString = dictionary[@7];
    }
    if ([string length] > 1) {
        if ([[string substringToIndex:2] isEqualToString:@"77"]) {
        codeString = dictionary[@77];
        }
    }
    if ([eightNine containsObject:objectToSearch] ) {
        codeString = dictionary[objectToSearch];
    }

    if ([codeString length] == 0) {
        if (![buffStr hasPrefix:@"+"]) {
            [buffStr insertString:@"+" atIndex:0];
        }
        if ([string length] > 2) {
        NSRange range = { 13, 0};
        [buffStr deleteCharactersInRange:NSMakeRange(range.location, [buffStr length] - range.location)];
        }
    }
    
    return @{KeyPhoneNumber: buffStr,
             KeyCountry:  codeString};
}
@end

