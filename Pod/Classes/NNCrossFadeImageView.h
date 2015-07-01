//
//  NNCrossFadeImageView.h
//  Pods
//
//  Created by noughts on 2015/07/01.
//
//

#import <UIKit/UIKit.h>

@interface NNCrossFadeImageView : UIImageView

/// クロスフェードにかける時間
@property CGFloat crossFadeDuration;

/// クロスフェードの間隔
@property CGFloat crossFadeInterval;

/// クロスフェード用画像配列
@property(nonatomic) NSArray* crossFadeImages;

@end
