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
    // Do any additional setup after loading the view.
    _equasion = [NSString new];
    _viewedNumber = @"";
    _calculator = [Calculator new];
}


- (IBAction)equals:(UIButton *)sender {
    _equasion = [_equasion stringByAppendingString:_textView.text];
    _viewedNumber = [NSString stringWithFormat:@"%lf", [_calculator calculate:_equasion]];
    _textView.text = _viewedNumber;
    _equasion = @"";
}

- (IBAction)operation:(UIButton *)sender {
    switch(sender.tag){
            //%
        case 11:
        
            _equasion = [_equasion stringByAppendingFormat:@"%@", _textView.text];
//            _viewedNumber = [NSString stringWithFormat:@"%lf", [_calculator calculate:_equasion]];
            _viewedNumber = @"";
            _textView.text = _viewedNumber;
            break;
            
            // /
        case 12:
                       
            _equasion = [_equasion stringByAppendingFormat:@"%@\\", _textView.text];
//            _viewedNumber = [NSString stringWithFormat:@"%lf", [_calculator calculate:_equasion]];
            _viewedNumber = @"";
            _textView.text = _viewedNumber;
            break;
            //*
        case 13:
            _equasion = [_equasion stringByAppendingFormat:@"%@*", _textView.text];
//            _viewedNumber = [NSString stringWithFormat:@"%lf", [_calculator calculate:_equasion]];
            _viewedNumber = @"";
            _textView.text = _viewedNumber;
            break;
            //-
        case 14:
            _equasion = [_equasion stringByAppendingFormat:@"%@-", _textView.text];
//            _viewedNumber = [NSString stringWithFormat:@"%lf", [_calculator calculate:_equasion]];
            _viewedNumber = @"";
            _textView.text = _viewedNumber;
            break;
            //+
        case 15:
            _equasion = [_viewedNumber stringByAppendingString:@"+"];
//            _viewedNumber = [NSString stringWithFormat:@"%lf", [_calculator calculate:_equasion]];
            _viewedNumber = @"";
            _textView.text = _viewedNumber;
            break;
    }
    
}

- (IBAction)clear:(UIButton *)sender {
    _viewedNumber = @"";
    _equasion = @"";
    _textView.text = _viewedNumber;
}

- (IBAction)numPad:(UIButton *)sender {
    switch(sender.tag){
        case 0:
            _viewedNumber = [_viewedNumber stringByAppendingString:@"0"];
            _textView.text = _viewedNumber;
            break;
        case 1:
            _viewedNumber = [_viewedNumber stringByAppendingString:@"1"];
            _textView.text = _viewedNumber;
            break;
            
        case 2:
            _viewedNumber = [_viewedNumber stringByAppendingString:@"2"];
            _textView.text = _viewedNumber;
            break;
        
        case 3:
            _viewedNumber = [_viewedNumber stringByAppendingString:@"3"];
            _textView.text = _viewedNumber;
            break;
        
        case 4:
            _viewedNumber = [_viewedNumber stringByAppendingString:@"4"];
            _textView.text = _viewedNumber;
            break;
        
        case 5:
            _viewedNumber = [_viewedNumber stringByAppendingString:@"5"];
            _textView.text = _viewedNumber;
            break;
        
        case 6:
            _viewedNumber = [_viewedNumber stringByAppendingString:@"6"];
            _textView.text = _viewedNumber;
            break;
        
        case 7:
            _viewedNumber = [_viewedNumber stringByAppendingString:@"7"];
            _textView.text = _viewedNumber;
            break;
        
        case 8:
            _viewedNumber = [_viewedNumber stringByAppendingString:@"8"];
            _textView.text = _viewedNumber;
            break;
        
        case 9:
            _viewedNumber = [_viewedNumber stringByAppendingString:@"9"];
            _textView.text = _viewedNumber;
            break;
        
        case 10:
            _viewedNumber = [_viewedNumber stringByAppendingString:@"."];
            _textView.text = _viewedNumber;
            break;
    }
    NSLog(@"%@", _viewedNumber);
}
@end
