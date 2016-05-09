//
//  ViewController.m
//  InitNSMutableDictionary
//
//  Created by chenyufeng on 16/5/9.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
#if 0
    /**(1)
     *  这样没有对可变字典进行初始化，也没有任何的意义。也无法使用setValue插入数据。也就是说值为nil的可变字典一般不用。
     在调试的时候可以看到，当可变字典类型为(NSMutableDictionary *)nil  时，无法使用setValue插入键值对。
     */
    NSMutableDictionary *dic = nil;
#endif
    
    
#if 0
    /**(2)
     以上两种初始化方法一样。观察调试的时候可以发现，当可变字典为  (_NSDictionaryM *) 0 key/value pair ，零个键值对的时候可以setValue插入数据。
     */
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dic02 = [[NSMutableDictionary alloc] initWithCapacity:1];
#endif
    
    
#if 0
    /**(3)
     这种初始化方法其实不推荐，这是隐式的使用 [value,key],[value,key]的方式来构造键值对。
     */
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"1",@"11",@"2",@"22",nil];
#endif
    
    
#if 0
    /**(4)
     使用另一个可变字典来初始化某个字典。
     */
    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary: dic2];
#endif
    
#if 0
    /**（5）
     *  分别使用两个数组来初始化可变字典，一个数组是“键”数组，另一个数组是“值”数组。初始化后键值对会一一进行匹配。
     */
    NSArray *valueArray = @[@"value01",@"value02”,@“value03"];
    NSArray *keyArray = @[@"key01",@"key02",@"key03"];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithObjects:valueArray forKeys:keyArray];
#endif
    
    
    //以上的可变字典使用实例方法初始化，下面使用类方法初始化
    
#if 0
    /**(6)
     *  直接使用类方法初始化。等同于上述（2）。
     */
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dic1 = [NSMutableDictionary dictionaryWithCapacity:1];
#endif
    
    
#if 0
    /**(7)
     *  等同于上述（3）
     */
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"1",@"11",@"2",@"22",nil];
#endif
    
    
    
#if 0
    /**(8)
     *  直接使用某个键值对初始化字典
     */
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithObject:@"1" forKey:@"11"];
#endif
    
    
#if 0
    /**(9)
     等同于上述（4）
     */
    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithDictionary:dic2];
#endif

#if 0
    /**
     *  等同于上述（5）
     */
    NSArray *valueArray = @[@"value01",@"value02",@"value03"];
    NSArray *keyArray = @[@"key01",@"key02",@"key03"];
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithObjects:valueArray forKeys:keyArray];
#endif

}

@end
