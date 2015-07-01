//
//  NNCrossFadeImageView.m
//  Pods
//
//  Created by noughts on 2015/07/01.
//
//

#import "NNCrossFadeImageView.h"
#import <CADisplayLink+NNSprite.h>

@implementation NNCrossFadeImageView


-(instancetype)initWithCoder:(NSCoder *)aDecoder{
	if( self = [super initWithCoder:aDecoder] ){
		[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(render:) name:@"onEnterFrame" object:[CADisplayLink sharedLink]];
	}
	return self;
}




-(void)dealloc{
	[[NSNotificationCenter defaultCenter] removeObserver:self name:@"onEnterFrame" object:[CADisplayLink sharedLink]];
}









-(void)render:(NSNotification*)note{

}



@end
