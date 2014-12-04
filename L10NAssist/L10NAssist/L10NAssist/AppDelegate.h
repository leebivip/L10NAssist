//
//  AppDelegate.h
//  L10NAssist
//
//  Created by st13892 on 2014. 12. 4..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class LAMainWindowController;

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    LAMainWindowController *mainWindowController;
}
- (IBAction)doEngineDataImport:(id)sender;
- (IBAction)doEngineDataExport:(id)sender;
- (IBAction)doProjectSetting:(id)sender;

@end

