//
//  ViewController.h
//  I-Phone_Calculator
//
//  Created by Ramy Ashraf on 25/04/2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *textView;

- (IBAction)numPad:(UIButton *)sender;
- (IBAction)clear:(UIButton *)sender;
- (IBAction)operation:(UIButton *)sender;
- (IBAction)equals:(UIButton *)sender;

@property (assign, nonatomic) double operand1;
@property (assign, nonatomic) double operand2;
@property (assign, nonatomic) double result;
@property (assign, nonatomic) int operator;

@end

