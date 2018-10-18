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

- (void)loadData{
    
}

@end
