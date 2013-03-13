//
//  ViewController.m
//  xml
//
//  Created by Edward on 13-3-12.
//  Copyright (c) 2013年 Edward. All rights reserved.
//

#import "ViewController.h"
#import "test.h"
@interface ViewController ()

@end

@implementation ViewController
-(void)doit {
    TBXML *tb = [[[TBXML alloc] initWithXMLFile:@"test.xml"] retain];
    TBXMLElement *root = tb.rootXMLElement;
    if (root) {
        TBXMLElement *coupon = [TBXML childElementNamed:@"coupon" parentElement:root];
        while (coupon!=nil) {
            
            test *obj = [[test alloc] init];
            obj.ID = [TBXML valueOfAttributeNamed:@"id" forElement:coupon];
            obj.caption = [TBXML valueOfAttributeNamed:@"caption" forElement:coupon];
            obj.des = [TBXML valueOfAttributeNamed:@"description" forElement:coupon];
            obj.icon = [TBXML valueOfAttributeNamed:@"icon" forElement:coupon];
            obj.pop = [TBXML valueOfAttributeNamed:@"popularity" forElement:coupon];
            coupon = [TBXML nextSiblingNamed:@"coupon" searchFromElement:coupon];
        }
    }
  
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self doit];
	}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
