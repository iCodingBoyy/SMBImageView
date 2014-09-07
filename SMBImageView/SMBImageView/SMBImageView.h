//
//  SMBImageView.h
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


#import <UIKit/UIKit.h>

@interface SMBImageView : UIImageView
{
    @private
    UIActivityIndicatorView *_activityIndicator;
    BOOL _shouldShowActivity;
    NSInteger _maximunSimultaneousLoading;
}

@property (nonatomic, readonly) UIActivityIndicatorView *activityIndicator; //nil if shouldShowActivity is NO
@property (nonatomic, assign) BOOL shouldShowActivity;  //If YES then activityIndicator is not nil
@property (nonatomic, assign) NSInteger maximunSimultaneousLoading; //maximum number of connection at a time - default value is 1
// set image from URL using this methods
- (void) loadImageFromURL:(NSURL*) url;
- (void) loadImageFromURL:(NSURL*) url thumbnail:(BOOL) thumb;
//cancel all image loading operations
+ (void) cancelAllDownloads;
@end


