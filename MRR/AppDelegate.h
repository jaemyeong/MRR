//
//  AppDelegate.h
//  MRR
//
//  Created by 진재명 on 2021/02/10.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate: UIResponder <UIApplicationDelegate>

@property (nonatomic, readonly, retain) NSPersistentContainer *persistentContainer;

- (void)saveContext;

@end
