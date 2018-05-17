#line 1 "/Users/geqiangbao/Desktop/桌面A/11.HOOK/Monkey进攻/Monkey进攻Dylib/Logos/Monkey__Dylib.xm"




#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class ViewController; 
static void (*_logos_orig$_ungrouped$ViewController$clickTwo$)(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$ViewController$clickTwo$(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST, SEL, id); 

#line 7 "/Users/geqiangbao/Desktop/桌面A/11.HOOK/Monkey进攻/Monkey进攻Dylib/Logos/Monkey__Dylib.xm"



static void _logos_method$_ungrouped$ViewController$clickTwo$(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id org) {
NSLog(@"🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺");

}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ViewController = objc_getClass("ViewController"); MSHookMessageEx(_logos_class$_ungrouped$ViewController, @selector(clickTwo:), (IMP)&_logos_method$_ungrouped$ViewController$clickTwo$, (IMP*)&_logos_orig$_ungrouped$ViewController$clickTwo$);} }
#line 17 "/Users/geqiangbao/Desktop/桌面A/11.HOOK/Monkey进攻/Monkey进攻Dylib/Logos/Monkey__Dylib.xm"
