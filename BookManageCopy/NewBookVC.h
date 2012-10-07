//
//  NewBookVC.h
//  BookManageCopy
//
//  Created by Ibokan on 12-10-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewBookVC : UIViewController<UITextFieldDelegate,UITextViewDelegate>
@property (retain, nonatomic) IBOutlet UITextField *bookName;
@property (retain, nonatomic) IBOutlet UITextField *auther;
@property (retain, nonatomic) IBOutlet UITextField *publishName;
@property (retain, nonatomic) IBOutlet UITextField *bookDate;
@property (retain, nonatomic) IBOutlet UITextView *bookIntro;
- (IBAction)save:(id)sender;
- (IBAction)cancle:(id)sender;

@end
