//
//  NewBookVC.m
//  BookManageCopy
//
//  Created by Ibokan on 12-10-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NewBookVC.h"

@implementation NewBookVC
@synthesize bookName;
@synthesize auther;
@synthesize publishName;
@synthesize bookDate;
@synthesize bookIntro;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}




- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/
- (IBAction)cancle:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
- (IBAction)ddd:(id)sender 
{
    NSLog(@"dddddd");
}


- (IBAction)save:(id)sender {
    NSLog(@"dddddd");
    [self dismissModalViewControllerAnimated:YES];
}
- (IBAction)hhhhh:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)doTap:(id)sender {
    [self.bookIntro resignFirstResponder];
    [self.bookDate resignFirstResponder];
    [self.bookName resignFirstResponder];
    [self.auther resignFirstResponder];
    [self.publishName resignFirstResponder];
    [UIView beginAnimations:@"down" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    self.view.frame = CGRectMake(0, 44, 320, 460-44);
    [UIView commitAnimations];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title=@"NewBook";
    self.bookName.delegate=self;
    self.bookDate.delegate=self;
    self.auther.delegate=self;
    self.bookIntro.delegate=self;
   
}
-(BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    [UIView beginAnimations:@"up" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    self.view.frame=CGRectMake(0, -180, 320, 460);
    [UIView commitAnimations];
    return YES;
}
-(void)keyBoardReturn{
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
- (void)viewDidUnload
{
    [self setBookName:nil];
    [self setAuther:nil];
    [self setPublishName:nil];
    [self setBookDate:nil];
    [self setBookIntro:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [bookName release];
    [auther release];
    [publishName release];
    [bookDate release];
    [bookIntro release];
    [super dealloc];
}

//- (IBAction)save:(id)sender {
//    [self dismissModalViewControllerAnimated:YES];
//}
//
//- (IBAction)cancle:(id)sender {
//    [self dismissModalViewControllerAnimated:YES];
//}
@end
