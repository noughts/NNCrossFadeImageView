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
	__weak NSTimer* _timer;
	NSUInteger _counter;
}


-(void)awakeFromNib{
	[super awakeFromNib];
	if( _crossFadeDuration == 0 ){
		_crossFadeDuration = 0.25;
	}
	if( _crossFadeInterval == 0 ){
		_crossFadeInterval = 1;
	}
}

- (void)removeFromSuperview{
	[super removeFromSuperview];
	[_timer invalidate];
}

-(void)dealloc{
	NBULogVerbose(@"dealloc");
	[_timer invalidate];
}



-(void)onTimer:(NSTimer*)timer{
	NBULogVerbose(@"timer");
	[self crossFade];
}


-(void)setCrossFadeImages:(NSArray *)crossFadeImages{
	_crossFadeImages = crossFadeImages;
	__weak typeof(self) _self = self;
	_timer = [NSTimer scheduledTimerWithTimeInterval:_crossFadeInterval target:_self selector:@selector(onTimer:) userInfo:nil repeats:YES];
	[self crossFade];
}


-(void)crossFade{
	if( !_crossFadeImages ){
		return;
	}
	CATransition* transition = [CATransition animation];
	transition.duration = _crossFadeDuration;
	transition.type = kCATransitionFade;
	
	[self.layer addAnimation:transition forKey:nil];
	
	UIImage* image = _crossFadeImages[_counter%_crossFadeImages.count];
	self.image = image;
	_counter++;
}








@end
