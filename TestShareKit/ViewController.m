//
//  ViewController.m
//  TestShareKit
//
//  Created by Mia Yu on 8/11/15.
//  Copyright (c) 2015 Miao. All rights reserved.
//


#import "ViewController.h"
#import "SHKiOSTwitter.h"
#import "SHKItem.h"
#import "SHK.h"
#import "SHKWhatsApp.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonClicked:(id)sender {
    UIImage *image = [ UIImage imageNamed:@"image.jpg" ];
    SHKItem *item = [SHKItem image:image title:@"Check this out! "];
    [SHK setRootViewController:self];
    [ SHKWhatsApp shareImage:image
                       title:@"title" ];
}
@end