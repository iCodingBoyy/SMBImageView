//
//  SMBImageView.m
//  SMBImageView
//
//  Created by Soumen Bhuin on 23/04/12.
//  Copyright (C) 2012 SMB. All rights reserved.

//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
//  of the Software, and to permit persons to whom the Software is furnished to do
//  so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.


#import "SMBImageView.h"

#define MAX_OPERATIONS 1

@interface SMBImageView ()

- (void)showActivity;
- (void)hideActivity;
- (void)loadImage:(UIImage*)img;
- (void)loadThumbnailImage:(UIImage*)img;
@end

@interface ImgLoadOperation : NSOperation
{
@private
    SMBImageView *_imgView;
    NSURL *_url;
    BOOL _isThumbnail;
}
- (id)initWithImageView: (UIImageView*)view url:(NSURL*) url thumbnail:(BOOL) thumb;

@end

@implementation ImgLoadOperation

- (id)initWithImageView:(SMBImageView*) view url:(NSURL*) url thumbnail:(BOOL) thumb{
    
    if ((self = [super init]))
	{
        _imgView = [view retain];
        _url = [url retain];
        _isThumbnail = thumb;
    }
	return self;
}

- (void)dealloc {
    
    [_imgView release];
    [_url release];
    [super dealloc];
}

- (void)main
{
    @autoreleasepool
    {
        if (!self.isCancelled)
        {
            UIImage *img = [[UIImage alloc] initWithData:[NSData dataWithContentsOfURL:_url]];
            SEL selector = @selector(loadImage:);
            if (_isThumbnail)
            {
                selector = @selector(loadThumbnailImage:);
            }
            
            if (!self.isCancelled)
            {
                [_imgView performSelectorOnMainThread:selector withObject:img waitUntilDone:YES];
            }
            [img release];
        }
    }
}

@end

static NSOperationQueue *opQueue = nil;
static unsigned int thisInstance = 0;
static dispatch_once_t safer;

#pragma mark - SMBImageView Implementation

@implementation SMBImageView
@synthesize maximunSimultaneousLoading = _maximunSimultaneousLoading;

+(id)alloc
{
     thisInstance++;
    return [super alloc];
}

- (id)init
{
    if(self = [super init])
    {
        _shouldShowActivity = NO;
        _maximunSimultaneousLoading = MAX_OPERATIONS;
    }
    return self;
}

- (id)initWithImage:(UIImage *)image
{
    if (self = [super initWithImage:image])
    {
        _shouldShowActivity = NO;
        _maximunSimultaneousLoading = MAX_OPERATIONS;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        _shouldShowActivity = NO;
        _maximunSimultaneousLoading = MAX_OPERATIONS;
    }
    return self;
}

- (BOOL)shouldShowActivity
{
    return _shouldShowActivity;
}

- (void)setShouldShowActivity:(BOOL)shouldShowActivity
{
    _shouldShowActivity = shouldShowActivity;
    if (_shouldShowActivity) {
        if (_activityIndicator) return;
        _activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        _activityIndicator.center = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
        [self addSubview:_activityIndicator];
    }
    else {
        [_activityIndicator removeFromSuperview];
        [_activityIndicator release];
        _activityIndicator = nil;
    }
}

- (void)showActivity
{
    [_activityIndicator setHidden:NO];
    [_activityIndicator startAnimating];
}

- (void)hideActivity
{
    [_activityIndicator stopAnimating];
    [_activityIndicator setHidden:YES];
}

- (void) loadImageFromURL:(NSURL*) url
{
    [self loadImageFromURL:url thumbnail:NO];
}

- (void) loadImageFromURL:(NSURL*) url thumbnail:(BOOL)thumb
{
    
    if (![NSThread isMainThread]) return; //this only execute in main thread.
    if ( opQueue == nil )
    {
        //not required actually....!
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_4_0
        // Allocates once with Grand Central Dispatch (GCD) routine.
        // It's thread safe.
        
        dispatch_once(&safer, ^(void)
                      {
                          if (opQueue==nil)
                          {
                              opQueue = [[NSOperationQueue alloc] init];
                              [opQueue setMaxConcurrentOperationCount:_maximunSimultaneousLoading];
                          }
                      });
#else
        // Allocates once using the old approach, it's slower.
        // It's thread safe.
        @synchronized(self)
        {
            // The synchronized instruction will make sure,
            // that only one thread will access this point at a time.
            if (opQueue==nil)
            {
                opQueue = [[NSOperationQueue alloc] init];
                [opQueue setMaxConcurrentOperationCount:_maximunSimultaneousLoading];
            }
        }
#endif
        
    }
    if (_shouldShowActivity)
    {
        [self showActivity];    //shows the Activity Indicator
    }
    
    ImgLoadOperation *op = [[ImgLoadOperation alloc] initWithImageView:self url:url thumbnail:thumb];
    [opQueue addOperation:op];
    [op release];

}

+ (void) cancelAllDownloads
{
    if (opQueue) {
        [opQueue cancelAllOperations];
    }
}

- (void)loadImage:(UIImage*)img
{
    [self setImage:img];
    //hide activity
    if (_shouldShowActivity)
    {
        [self hideActivity];
    }
}

- (void)loadThumbnailImage:(UIImage*)img
{
    CGSize viewSize = CGSizeMake(self.bounds.size.width, self.bounds.size.height);
    CGRect desiredRect = CGRectZero;
    if (img.size.width>img.size.height)
    {
        CGFloat height = (img.size.height*viewSize.height)/img.size.width;
        desiredRect = CGRectMake(0, (viewSize.height - height)/2, viewSize.width, height);
    }
    else
    {
        CGFloat width = (img.size.width*viewSize.width)/img.size.height;
        desiredRect = CGRectMake((viewSize.width - width)/2, 0, width, viewSize.height);
    }
    
    UIGraphicsBeginImageContext(viewSize);
	[img drawInRect:desiredRect];
    [self setImage:UIGraphicsGetImageFromCurrentImageContext()];
	UIGraphicsEndImageContext();
    //hide activity
    if (_shouldShowActivity)
    {
        [self hideActivity];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [_activityIndicator setCenter:CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds))];
}

- (void)dealloc
{
    [_activityIndicator release];
    if (thisInstance==1)
    {
        if (opQueue)
        {
            [opQueue release];
            opQueue = nil;
            safer = 0;
        }
    }
    else
    {
        thisInstance--;
    }
    [super dealloc];
}
@end
