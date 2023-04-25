//
//  ViewController.h
//  I-Phone_Calculator
//
//  Created by Ramy Ashraf on 25/04/2023.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *textView;

@property NSString *equasion;
@property NSString *viewedNumber;
@property Calculator *calculator;
- (IBAction)numPad:(UIButton *)sender;
- (IBAction)clear:(UIButton *)sender;
- (IBAction)operation:(UIButton *)sender;
- (IBAction)equals:(UIButton *)sender;


@end

