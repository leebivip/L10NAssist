//
//  LAMainWindowController.m
//  L10NAssist
//
//  Created by st13892 on 2014. 12. 4..
//  Copyright (c) 2014년 binglingshuang. All rights reserved.
//

#import "LAMainWindowController.h"

@interface LAMainWindowController ()

@end

@implementation LAMainWindowController

// -------------------------------------------------------------------------------
//	awakeFromNib:
// -------------------------------------------------------------------------------
- (void)awakeFromNib
{
    [_verticalSplitView setDelegate:self];	// we want a chance to affect the vertical split view coverage
    //[_horizontalSplitView setDelegate:self];
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}


// -------------------------------------------------------------------------------
//	splitView:effectiveRect:effectiveRect:forDrawnRect:ofDividerAtIndex
// -------------------------------------------------------------------------------
- (NSRect)splitView:(NSSplitView *)splitView effectiveRect:(NSRect)proposedEffectiveRect forDrawnRect:(NSRect)drawnRect ofDividerAtIndex:(NSInteger)dividerIndex
{
    NSRect effectiveRect = drawnRect;
    
    if (splitView == _verticalSplitView)
    {
        // don't steal as much from the scroll bar as NSSplitView normally would
        effectiveRect.origin.x -= 2.0;
        effectiveRect.size.width += 6.0;
        
    }
    
    return effectiveRect;
}

// -------------------------------------------------------------------------------
//	splitView:additionalEffectiveRectOfDividerAtIndex:dividerIndex:
// -------------------------------------------------------------------------------
- (NSRect)splitView:(NSSplitView *)splitView additionalEffectiveRectOfDividerAtIndex:(NSInteger)dividerIndex
{
    // we have a divider handle next to one of the split views in the window
//    if (splitView == _verticalSplitView)
//        return [dividerHandleView convertRect:[dividerHandleView bounds] toView:splitView];
//    else
        return NSZeroRect;
}

// -------------------------------------------------------------------------------
//	constrainMinCoordinate:proposedCoordinate:index
// -------------------------------------------------------------------------------
- (CGFloat)splitView:(NSSplitView *)splitView constrainMinCoordinate:(CGFloat)proposedCoordinate ofSubviewAt:(NSInteger)index
{
    CGFloat constrainedCoordinate = proposedCoordinate;
    if (splitView == _verticalSplitView)
    {
        // the primary vertical split view is asking for a constrained size
        constrainedCoordinate = proposedCoordinate + 120.0;
    }
    else if (splitView == _horizontalSplitView)
    {
        // the horizontal split view between mailboxes and activity view
        constrainedCoordinate = proposedCoordinate + 200.0;
    }
    
    return constrainedCoordinate;
}

@end
