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
    NSTextField *description = [[NSTextField alloc] initWithFrame:NSMakeRect(30, 30, 300, 30)];
    [description setFont:[NSFont fontWithName:@"Helvetica" size:19]];
    [description setStringValue:@"NSSmallSquareBezelStyle"];
    [description setBordered:NO];
    [description setTextColor:[NSColor blackColor]];
    [description setEditable:NO];
    [description setBackgroundColor:[NSColor clearColor]];
    
    NSButton *button = [[NSButton alloc] initWithFrame:NSMakeRect(330, 30, 300, 30)];
    [button setFont:[NSFont fontWithName:@"Helvetica" size:18]];
    [button setTitle:@"Push me"];
    [button setBezelStyle:NSSmallSquareBezelStyle];
    [[fadedWindow contentView] addSubview:description];
    [[fadedWindow contentView] addSubview:button];
    [fadedWindow makeKeyAndOrderFront:self];
    [fadedWindow orderFront:self];

}

@end
