#import <CoreGraphics/CoreGraphics.h>

%hook SBIconLabel

- (id)initWithFrame:(CGRect)frame
{
	return %orig(CGRectMake(frame.origin.x, frame.origin.y - 57, frame.size.width, frame.size.height));
}

- (void)setFrame:(CGRect)frame
{
	%orig(CGRectMake(frame.origin.x, frame.origin.y - 57, frame.size.width, frame.size.height));
}

%end