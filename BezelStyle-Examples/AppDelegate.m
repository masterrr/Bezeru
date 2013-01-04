//
//  AppDelegate.m
//  BezelStyle-Examples
//
//  Created by Dmitry Kurilo on 1/4/13.
//  Copyright (c) 2013 Kurilo Dmitry. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    
    
    typedef enum bezelTypes {
        NSRoundedBezelStyle           = 1,
        NSRegularSquareBezelStyle     = 2,
        NSThickSquareBezelStyle       = 3,
        NSThickerSquareBezelStyle     = 4,
        NSDisclosureBezelStyle        = 5,
        NSShadowlessSquareBezelStyle  = 6,
        NSCircularBezelStyle          = 7,
        NSTexturedSquareBezelStyle    = 8,
        NSHelpButtonBezelStyle        = 9,
        NSSmallSquareBezelStyle       = 10,
        NSTexturedRoundedBezelStyle   = 11,
        NSRoundRectBezelStyle         = 12,
        NSRecessedBezelStyle          = 13,
        NSRoundedDisclosureBezelStyle = 14,
        NSInlineBezelStyle = 15,
        NSSmallIconButtonBezelStyle  = 2
    } NSBezelStyle;
    
    NSBezelStyle bezels;
    NSRect frame = [[NSScreen mainScreen] frame];
    NSWindow *fadedWindow = [[NSWindow alloc] initWithContentRect:frame
                                                        styleMask:NSBorderlessWindowMask
                                                        backing:NSBackingStoreBuffered
                                                        defer:YES
                                                        screen:nil];
    [fadedWindow setAcceptsMouseMovedEvents:YES];
    // make window transparent
    [fadedWindow setOpaque:NO]; 
    [fadedWindow setLevel:CGShieldingWindowLevel()];
    // make white overlay, cmd+q to quit
    [fadedWindow setBackgroundColor:[NSColor colorWithDeviceRed:255 green:255 blue:255 alpha:1]];
    
    // We start draw from left bottom corner
    
    // Description to the button
    /* NSTextField *description = [[NSTextField alloc] initWithFrame:NSMakeRect(30, 30, 300, 30)];
    [description setFont:[NSFont fontWithName:@"Helvetica" size:19]];
    [description setBordered:NO];
    [description setTextColor:[NSColor blackColor]];
    [description setEditable:NO];
    [description setBackgroundColor:[NSColor clearColor]]; */
    for (int i=1; i<16; i++) {
        bezels = i;
        NSButton *button = [[NSButton alloc] initWithFrame:NSMakeRect(330, i*50, 300, 30)];
        [button setFont:[NSFont fontWithName:@"Helvetica" size:18]];
        [button setTitle:@""];
        [button setBezelStyle:bezels];
        [[fadedWindow contentView] addSubview:button];
        
    }
    //[[fadedWindow contentView] addSubview:description];
    [fadedWindow makeKeyAndOrderFront:self];
    [fadedWindow orderFront:self];

}

@end
