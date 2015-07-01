//
//  NNCrossFadeImageView.m
//  Pods
//
//  Created by noughts on 2015/07/01.
//
//

#import "NNCrossFadeImageView.h"
#import <NBULogStub.h>

@implementation NNCrossFadeImageView{
	NSTimer* _timer;
}


-(void)awakeFromNib{
	[super awakeFromNib];
	_timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(onTimer:) userInfo:nil repeats:YES];
}

-(void)dealloc{
	[_timer invalidate];
}



-(void)onTimer:(NSTimer*)timer{
	NBULogVerbose(@"timer");
}






@end
