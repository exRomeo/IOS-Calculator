//
//  Calculator.m
//  I-Phone_Calculator
//
//  Created by Ramy Ashraf on 25/04/2023.
//

#import "Calculator.h"

@implementation Calculator


-(double) calculate:(NSString *)expression {
    // Use regular expression to split the expression at operators
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"([-+*/%])" options:0 error:nil];
    NSArray *splitExpression = [regex matchesInString:expression options:0 range:NSMakeRange(0, [expression length])];
    
    // Initialize the result to the first number in the expression
    NSString *firstNumberString = [expression substringToIndex:[splitExpression[0] range].location];
    double result = [firstNumberString doubleValue];
    
    // Loop through the rest of the split expression, performing the operation on the result
    for (int i = 0; i < [splitExpression count]; i++) {
        NSRange operatorRange = [splitExpression[i] range];
        NSString *operator = [expression substringWithRange:operatorRange];
        
        NSRange numberRange;
        if (i == [splitExpression count] - 1) {
            numberRange = NSMakeRange(operatorRange.location + 1, [expression length] - operatorRange.location - 1);
        } else {
            NSRange nextOperatorRange = [splitExpression[i+1] range];
            numberRange = NSMakeRange(operatorRange.location + 1, nextOperatorRange.location - operatorRange.location - 1);
        }
        NSString *numberString = [expression substringWithRange:numberRange];
        double number = [numberString doubleValue];
        
//        switch([operator characterAtIndex:0]){
//            case '+':
//                result += number;
//                break;
//            case '-':
//                result -= number;
//                break;
//            case '*':
//                result *= number;
//                break;
//            case '/':
//                result /= number;
//                break;
//            case '%':
//                result = (int)result % number;
//                break;
//            default:
//                break;
//        }
//
        if ([operator isEqualToString:@"+"]) {
            result += number;
        } else if ([operator isEqualToString:@"-"]) {
            result -= number;
        } else if ([operator isEqualToString:@"*"]) {
            result *= number;
        } else if ([operator isEqualToString:@"/"]) {
            result /= number;
        }
    }
    
    // Return the final result
    return result;
}
@end
