//
//  LAMainWindow.h
//  L10NAssist
//
//  Created by st13892 on 2014. 12. 4..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface LAMainWindowController : NSWindowController <NSSplitViewDelegate>
@property (strong) IBOutlet NSSplitView *horizontalSplitView;
@property (strong) IBOutlet NSSplitView *verticalSplitView;

@end
