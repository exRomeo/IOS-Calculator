//
//  ViewController.m
//  I-Phone_Calculator
//
//  Created by Ramy Ashraf on 25/04/2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)equals:(UIButton *)sender {
    
    self.operand2 = [self.textView.text doubleValue];
        switch (self.operator) {
            
            case 15:
                self.result = self.operand1 + self.operand2;
                break;
            
            case 14:
                self.result = self.operand1 - self.operand2;
                break;
            
            case 13:
                self.result = self.operand1 * self.operand2;
                break;
            
            case 12:
                self.result = self.operand1 / self.operand2;
                break;
            
            case 11:
                if(_operand2 !=0){
                    self.result = (int)self.operand1 % (int)self.operand2;
                }
                break;
            
            default:
                break;
        }
    
    if((_operator == 12 || _operator == 11) && _operand2 ==0){
        _textView.text = @"Error.";
    } else{
        self.textView.text = [NSString stringWithFormat:@"%g", self.result];
 }
}

- (IBAction)operation:(UIButton *)sender {
    
    if(sender.tag == -1){
        
        self.textView.text = [NSString stringWithFormat:@"%g", [self.textView.text doubleValue] * -1];
        
    } else {
        
    self.operand1 = [self.textView.text doubleValue];
    self.operator = (int)sender.tag;
    self.textView.text = @"0";
        
    }
}

- (IBAction)clear:(UIButton *)sender {
    self.textView.text = @"0";
        self.operand1 = 0;
        self.operand2 = 0;
        self.result = 0;
        self.operator = 0;
}

- (IBAction)numPad:(UIButton *)sender {
    NSString *digit = sender.titleLabel.text;
       NSString *text = self.textView.text;
       if ([text isEqualToString:@"0"]) {
           self.textView.text = digit;
       } else {
           self.textView.text = [text stringByAppendingString:digit];
       }
    
}
@end
