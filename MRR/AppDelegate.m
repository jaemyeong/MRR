//
//  AppDelegate.m
//  MRR
//
//  Created by 진재명 on 2021/02/10.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize persistentContainer = _persistentContainer;

- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    return [[[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role] autorelease];
}

- (NSPersistentContainer *)persistentContainer {
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"MRR"];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    return [[_persistentContainer retain] autorelease];
}

- (void)saveContext {
    NSManagedObjectContext *context = [self.persistentContainer.viewContext retain];
    
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
    
    [context release];
}

- (void)dealloc {
    [_persistentContainer release];
    [super dealloc];
}

@end
