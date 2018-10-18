//
//  HZTableView.m
//  EffectiveOC
//
//  Created by 韩志峰 on 2018/10/18.
//  Copyright © 2018 韩志峰. All rights reserved.
//

#import "HZTableView.h"
#import "NSString+HZAdditions.h"

@interface HZTableView()<UITableViewDelegate,UITableViewDataSource>

@end

static NSString *cellIdenftifier = @"cellIdentifier";

@implementation HZTableView
{
    NSMutableArray *datas;
    NSMutableArray *needLoadArry;
    BOOL scrollToToping;
}
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.dataSource = self;
        self.delegate = self;
        datas = [[NSMutableArray alloc] init];
        needLoadArry = [[NSMutableArray alloc] init];
        [self loadData];
        [self reloadData];
        
    }
    return self;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdenftifier];
    if (!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdenftifier];
    }
    [self drawCell:cell withIndexPath:indexPath];
    return  cell;
}
- (void)drawCell:(UITableViewCell*)cell withIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *data = [datas objectAtIndex:indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //填充数据源
    if (needLoadArry.count > 0 && [needLoadArry indexOfObject:indexPath] == NSNotFound){
        return;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  120;
}
//按需加载 预加载 停止滚动加载图片 三种优化方式
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    //目标行的index
    NSIndexPath *ip = [self indexPathForRowAtPoint:CGPointMake(0, targetContentOffset->y)];
    //当前行的index
    NSIndexPath *cip = [[self indexPathsForVisibleRows] firstObject];
    NSInteger skipCount = 8;
    //如果滑动过快，超过指定行，则只加载指定行附近的三行数据
    if (labs(cip.row - ip.row) > skipCount){
        NSArray *temp = [self indexPathsForRowsInRect:CGRectMake(0, targetContentOffset->y, self.frame.size.width, self.frame.size.height)];
        NSMutableArray *arr = [NSMutableArray arrayWithArray:temp];
        if (velocity.y < 0){ //像下拉
            
        }else{//像上划
            
        }
    }
    
}
- (void)loadData{
    
}

@end
