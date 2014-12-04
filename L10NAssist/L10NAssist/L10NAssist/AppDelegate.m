//
//  AppDelegate.m
//  L10NAssist
//
//  Created by st13892 on 2014. 12. 4..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import "AppDelegate.h"
#import "LAMainWindowController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    // show main window
    if (mainWindowController == nil)
    {
        mainWindowController = [[LAMainWindowController alloc] initWithWindowNibName:@"LAMainWindow"];
    }
    
    [mainWindowController showWindow:self];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)doEngineDataImport:(id)sender
{
    
}

- (IBAction)doEngineDataExport:(id)sender
{
    
}

- (IBAction)doProjectSetting:(id)sender
{
    
}

@end
