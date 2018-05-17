//
//  hookManager.m
//  基本保护
//
//  Created by 戈强宝 on 2018/5/17.
//  Copyright © 2018年 戈强宝. All rights reserved.
//

#import "hookManager.h"
#import "fishhook.h"


@implementation hookManager
+(void)load{
    NSLog(@"%s",__func__);
    Method oldMethod = class_getInstanceMethod(objc_getClass("ViewController"), @selector(clickOne:));
    Method newMethod = class_getInstanceMethod(self.class, @selector(test));
    method_exchangeImplementations(oldMethod, newMethod);
    
    struct rebinding bind0;
    bind0.name = "method_exchangeImplementations";
    bind0.replacement = myExchange;
    bind0.replaced = (void *)&(old_exchange);
    
    
    struct rebinding bind1;
    bind1.name = "method_getImplementation";
    bind1.replacement = myExchange;
    bind1.replaced = (void *)&getIMP;
    struct rebinding bind2;
    bind2.name = "method_setImplementation";
    bind2.replacement = myExchange;
    bind2.replaced = (void *)&setIMP;
    struct rebinding rebinds[] = {bind0,bind1,bind2};
    rebind_symbols(rebinds, 3);
    
    
}
static void (*old_exchange)(Method _Nonnull m1, Method _Nonnull m2);

static IMP _Nonnull (*getIMP)(Method _Nonnull m);

static IMP _Nonnull (*setIMP)(Method _Nonnull m, IMP _Nonnull imp);

-(void)test{
    NSLog(@"原来APP hook 保留");
}

void myExchange(Method _Nonnull m1, Method _Nonnull m2) {
    NSLog(@"检测到hook");
    exit(1);
}


@end
