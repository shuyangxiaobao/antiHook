// See http://iphonedevwiki.net/index.php/Logos
// 修改 MachO
//  大牛总是一笔带过!!

#import <UIKit/UIKit.h>

%hook ViewController

- (void)clickTwo:(id)org
{
NSLog(@"🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺");

}

%end

