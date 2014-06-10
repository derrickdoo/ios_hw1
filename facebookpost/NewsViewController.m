//
//  NewsViewController.m
//  facebookpost
//
//  Created by Derrick Or on 6/6/14.
//  Copyright (c) 2014 derrickor. All rights reserved.
//

#import "NewsViewController.h"

@interface NewsViewController ()
@property (weak, nonatomic) IBOutlet UIView *postContainer;
@property (weak, nonatomic) IBOutlet UIView *commentBar;
@property (weak, nonatomic) IBOutlet UIImageView *postImage;
- (IBAction)onTap:(id)sender;

@end

@implementation NewsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = @"Post";
    
    self.postContainer.layer.cornerRadius = 4;
    
    self.postContainer.layer.shadowColor = [UIColor blackColor].CGColor;
    self.postContainer.layer.shadowOffset = CGSizeMake(0, 0);
    self.postContainer.layer.shadowOpacity = 0.2;
    self.postContainer.layer.shadowRadius = 3;
    
    self.postImage.layer.shadowColor = [UIColor blackColor].CGColor;
    self.postImage.layer.shadowOffset = CGSizeMake(0, 0);
    self.postImage.layer.shadowOpacity = 0.2;
    self.postImage.layer.shadowRadius = 2;
    
//    self.commentBar.layer.borderColor = [UIColor lightGrayColor].CGColor;
//    self.commentBar.layer.borderWidth = 1;
    
    self.commentBar.layer.shadowColor = [UIColor blackColor].CGColor;
    self.commentBar.layer.shadowOffset = CGSizeMake(0, 0);
    self.commentBar.layer.shadowOpacity = 0.2;
    self.commentBar.layer.shadowRadius = 2;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}
@end
