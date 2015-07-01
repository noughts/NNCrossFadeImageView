//
//  NNViewController.m
//  NNCrossFadeImageView
//
//  Created by Koichi Yamamoto on 07/01/2015.
//  Copyright (c) 2014 Koichi Yamamoto. All rights reserved.
//

#import "NNViewController.h"
#import <NNCrossFadeImageView/NNCrossFadeImageView.h>
#import <NBULogStub.h>
#import <NBULog.h>

@implementation NNViewController{
	__weak IBOutlet NNCrossFadeImageView* _iv;
}

- (void)viewDidLoad{
    [super viewDidLoad];
	[NBULog setKitLogLevel:DDLogLevelVerbose];
	
	_iv.crossFadeImages = @[[UIImage imageNamed:@"IMG_1025.JPG"], [UIImage imageNamed:@"cheetah1136.png"]];
}

-(void)dealloc{
	NBULogVerbose(@"dealloc");
}


@end
