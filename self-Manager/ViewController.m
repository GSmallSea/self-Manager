//
//  ViewController.m
//  self-Manager
//
//  Created by XH on 17/1/13.
//  Copyright © 2017年 huoniu. All rights reserved.
//

#import "ViewController.h"
#import "XHAvatarView.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,weak) UITableView *temptableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    [self setTableView];
}


- (void) setTableView
{
    
    UITableView * t = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    t.delegate = self;
    t.rowHeight=UITableViewAutomaticDimension;
    t.dataSource = self;
    t.separatorStyle = UITableViewCellSeparatorStyleNone;
    t.rowHeight = 60;
    [self.view addSubview:t];
    
    self.temptableView = t;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return  1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static NSString *identity = @"identity";
    
    viewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];

    if (cell == nil) {
        
        cell = [[viewTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return  cell;
}

@end

@implementation viewTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        
        XHAvatarView *avatarView = [[XHAvatarView alloc] initWithFrame:CGRectMake(10, 10, 60, 60)];
        
        [avatarView selfManagedConfigureWithAvatarURL:[NSURL URLWithString:@""] VIPInfo:nil uid:@""];
        
        [self.contentView addSubview:avatarView];
    }
    
    return  self;
}

@end
