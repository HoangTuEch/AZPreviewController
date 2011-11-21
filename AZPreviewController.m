//
//  AZPreviewController.m
//  silversynctouch
//
//  Created by Alan Zeino on 21/11/11.
//  Copyright (c) 2011 Alan Zeino. All rights reserved.
//

#import "AZPreviewController.h"

@implementation AZPreviewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTitle:[self.currentPreviewItem previewItemTitle]];
}

- (void)setTitle:(NSString *)title
{
    [super setTitle:title];
    UILabel *titleView = (UILabel *)self.navigationItem.titleView;
    if (!titleView) 
	{
        titleView = [[UILabel alloc] initWithFrame:CGRectZero];
        titleView.backgroundColor = [UIColor clearColor];
        titleView.font = [UIFont boldSystemFontOfSize:20.0];
        titleView.shadowColor = [UIColor colorWithRed:0.9373 green:0.9451 blue:0.9529 alpha:1.0000];
        titleView.shadowOffset = CGSizeMake(0.0, 1.0);
        titleView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin);
        
        titleView.textColor = [UIColor colorWithRed:0.3020 green:0.3294 blue:0.3608 alpha:1.0000]; // set this to whatever you like
        
        self.navigationItem.titleView = titleView;
        [titleView release];
    }
    titleView.text = title;
    [titleView sizeToFit];
}

@end
