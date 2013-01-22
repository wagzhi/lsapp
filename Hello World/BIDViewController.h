//
//  BIDViewController.h
//  Hello World
//
//  Created by Dave Mark on 9/25/11.
//  Copyright (c) 2011 Dave Mark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController
- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *statusTexts;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;
-(IBAction)textFieldDoneEditing:(id)sender;
-(IBAction)backgoundTap:(id)sender;
-(IBAction)slideMoved:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *ctlButton;
@property (weak, nonatomic) IBOutlet UISwitch *ctlSwitch;
-(IBAction)toggleSegment:(id)sender;
@end
