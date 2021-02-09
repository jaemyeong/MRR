//
//  SceneDelegate.m
//  MRR
//
//  Created by 진재명 on 2021/02/10.
//

#import "SceneDelegate.h"

#import "AppDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate

- (void)sceneDidEnterBackground:(UIScene *)scene {
    [(AppDelegate *)UIApplication.sharedApplication.delegate saveContext];
}

@end
