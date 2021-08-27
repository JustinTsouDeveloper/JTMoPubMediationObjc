//
//  AotterTrekNativeAdAdapter.h
//  Aotter_test_mopub_mediation
//
//  Created by Aotter on 2016/12/8.
//  Copyright © 2016年 aotter. All rights reserved.
//

#import <Foundation/Foundation.h>

#if __has_include(<MoPub/MoPub.h>)
    #import <MoPub/MoPub.h>
#else
    #import "MoPubSDK/MPNativeAdAdapter.h"
#endif

#if __has_include(<AotterTrek-iOS-SDK/AotterTrek-iOS-SDK.h>)
    #import <AotterTrek-iOS-SDK/AotterTrek-iOS-SDK.h>
#else
    #import <AotterTrek-iOS-SDK/TKAdNative.h>
    #import <AotterTrek-iOS-SDK/TKAdSuprAd.h>
#endif
//#import <AotterTrek-iOS-SDK/AotterTrek-iOS-SDK.h>

@interface AotterTrekNativeAdAdapter : NSObject<MPNativeAdAdapter, TKAdNativeDelegate>
@property TKAdNative *adNative;
@property TKAdSuprAd *suprAd;
@property (nonatomic, weak) id<MPNativeAdAdapterDelegate> delegate;
- (instancetype)initWithTKNativeAd:(TKAdNative *)nativeAd adProperties:(NSDictionary *)adProps;
- (instancetype)initWithTKSuprAd:(TKAdSuprAd *)suprAd adProperties:(NSDictionary *)adProps;
- (void)onLogImression;
- (void)onLogClick;
@end
