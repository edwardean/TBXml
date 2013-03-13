//
//  test.m
//  xml
//
//  Created by Edward on 13-3-12.
//  Copyright (c) 2013年 Edward. All rights reserved.
//

#import "test.h"

@implementation test
@synthesize ID,dic,caption,des,icon,pop;
- (void) setID:(NSString *)I {
    if (ID!=I) {
        [ID release];
        ID = [I copy];
        NSLog(@"id:%@",ID);
        
    }
}
- (void) setDes:(NSString *)d{
    if (des!=d) {
        [des release];
        des = [d copy];
        NSLog(@"des: %@",des);
    }
}
- (void)setCaption:(NSString *)c {
    if (caption!=c) {
        [caption release];
        caption = [c copy];
        NSLog(@"Caption:%@",caption);
    }
}
- (void)setIcon:(NSString *)i {
    if (icon!=i) {
        [icon release];
        icon = [i copy];
        NSLog(@"Icon:%@",icon);
    }
}
- (void)setPop:(NSString *)p {
    if (pop!=p) {
        [pop release];
        pop = [p copy];
        NSLog(@"Pop:%@",pop);
    }
}
@end
