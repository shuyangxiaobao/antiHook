//
//  gqbHook.m
//  gqbHookFrameWork
//
//  Created by 戈强宝 on 2018/5/17.
//  Copyright © 2018年 戈强宝. All rights reserved.
//

#import "gqbHook.h"
#import <objc/message.h>

@implementation gqbHook
+(void)load{
    NSLog(@"%s",__func__);
    Method oldMethod = class_getInstanceMethod(objc_getClass("ViewController"), @selector(clickTwo:));
    
    
    Method newMethod = class_getInstanceMethod(self.class, @selector(myclickTwo:));
    method_exchangeImplementations(oldMethod, newMethod);
}

-(void)myclickTwo:(id)send{
    NSLog(@"hook 成功了");
}
@end
