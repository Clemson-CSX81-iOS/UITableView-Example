//
//  NewTreeViewController.m
//  TableViews 1
//
//  Created by Douglas Edmonson on 6/22/12.
//  Copyright (c) 2012 Clemson University. All rights reserved.
//

#import "NewTreeViewController.h"

@implementation NewTreeViewController

#pragma mark - Property Syntheses
@synthesize delegate = _delegate;
@synthesize treeName = _treeName;
@synthesize treeType = _treeType;

#pragma mark - Methods
#pragma mark UIEvent Methods
- (IBAction)addTree {
    [self.delegate newTreeWithName:self.treeName.text AndType:self.treeType.text];
}

#pragma mark View Livecycle
- (void)viewDidUnload
{
    [self setTreeName:nil];
    [self setTreeType:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
@end
