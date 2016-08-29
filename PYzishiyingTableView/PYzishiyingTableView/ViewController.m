//
//  ViewController.m
//  PYzishiyingTableView
//
//  Created by Apple on 16/7/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (nonatomic, strong)NSArray *array;
@property (nonatomic, strong)NSMutableArray *modelMArray;
@end

@implementation ViewController

- (NSArray *)array {
    if (!_array) {
        _array = [NSArray array];
    }
    return _array;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _myTableView.rowHeight = UITableViewAutomaticDimension;
    _myTableView.estimatedRowHeight = 40;
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    _array = @[@"1",@"2dequeueReusableCellWithIdentifier",@"3(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectiondequeueReusableCellWithIdentifiervdequeueReusableCellWithIdentifier"];
}

#pragma mark ====== tableView代理
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _array.count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.contentLabel.text = _array[indexPath.row];
    return cell;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
