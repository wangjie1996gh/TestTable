//
//  main.m
//  TestTable
//
//  Created by mac2016 on 18/5/15.
//  Copyright © 2018年 yida. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

typedef struct stu {
    int num;
    struct stu *next;
}S;

typedef struct tea {
    int num;
    struct tea *pre;
    struct tea *next;
}T;

int main(int argc, char * argv[]) {

    //顺序链表
    /*S s1 = {12, NULL};
    S s2 = {22, NULL};
    S s3 = {32, NULL};
    S s4 = {42, NULL};
    S s5 = {52, NULL};
    
    s1.next = &s2;
    s2.next = &s3;
    s3.next = &s4;
    s4.next = &s5;
    s5.next = NULL;
    
    S s = s1;
    printf("%d -- %d -- %d -- %d -- %d\n",
           s.num,
           s.next->num,
           s.next->next->num,
           s.next->next->next->num,
           s.next->next->next->next->num
           );*/
    
    //循环链表
    /*S s1 = {12, NULL};
    S s2 = {22, NULL};
    S s3 = {32, NULL};
    S s4 = {42, NULL};
    S s5 = {52, NULL};
    
    s1.next = &s2;
    s2.next = &s3;
    s3.next = &s4;
    s4.next = &s5;
    s5.next = &s1;
    
    S s = s1;
    printf("%d -- %d -- %d -- %d -- %d -- %d\n",
           s.num,
           s.next->num,
           s.next->next->num,
           s.next->next->next->num,
           s.next->next->next->next->num,
           s.next->next->next->next->next->num
           );*/
    
    //双向链表
    /*T s1 = {12, NULL, NULL};
    T s2 = {22, NULL, NULL};
    T s3 = {32, NULL, NULL};
    T s4 = {42, NULL, NULL};
    T s5 = {52, NULL, NULL};
    
    s1.pre = NULL;
    s1.next = &s2;
    s2.pre = &s1;
    s2.next = &s3;
    s3.pre = &s2;
    s3.next = &s4;
    s4.pre = &s3;
    s4.next = &s5;
    s5.pre = &s4;
    s5.next = NULL;
    
    T s = s3;
    printf("%d -- %d -- %d -- %d -- %d\n",
           s.pre->pre->num,
           s.pre->num,
           s.num,
           s.next->num,
           s.next->next->num
           );*/
    
    //双向链表
    T s1 = {12, NULL, NULL};
    T s2 = {22, NULL, NULL};
    T s3 = {32, NULL, NULL};
    T s4 = {42, NULL, NULL};
    T s5 = {52, NULL, NULL};
    
    s1.pre = &s5;
    s1.next = &s2;
    s2.pre = &s1;
    s2.next = &s3;
    s3.pre = &s2;
    s3.next = &s4;
    s4.pre = &s3;
    s4.next = &s5;
    s5.pre = &s4;
    s5.next = &s1;
    
    T s = s3;
    printf("%d -- %d -- %d -- %d -- %d -- %d -- %d\n",
           s.pre->pre->pre->num,
           s.pre->pre->num,
           s.pre->num,
           s.num,
           s.next->num,
           s.next->next->num,
           s.next->next->next->num
           );
    
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
