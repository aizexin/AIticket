#import "AIBaseConfigController.h"

@interface AIBaseConfigController ()
@end

@implementation AIBaseConfigController

- (instancetype)init{
    return [self initWithStyle:(UITableViewStyleGrouped)];
}

-(instancetype)initWithStyle:(UITableViewStyle)style{
    return [super initWithStyle:(UITableViewStyleGrouped)];
}

#pragma mark -懒加载数据
-(NSMutableArray *)dataSourceM{
    if (!_dataSourceM) {
        _dataSourceM = [NSMutableArray array];
    }
    return  _dataSourceM;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark -tableViewdelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //设置点击了就取消
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    AIGroupModel *groupModel = self.dataSourceM[indexPath.section];
    AIConfigBaseItemModel *configModel = groupModel.groupConfigM[indexPath.row];
    //判断有没有代码块
    if (configModel.optionBlock) {
        configModel.optionBlock();
    }else if ([configModel isKindOfClass:[AIArrowItemModel class]]) {//设置页面跳转
        AIArrowItemModel *arrowModel = (AIArrowItemModel*)configModel;
        UIViewController *VC = [[arrowModel.configTarget alloc]init];
        //设置下一页的title
        VC.title = configModel.configTitle;
        [self.navigationController pushViewController:VC animated:YES];
    }
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    AILog(@"%ld",self.dataSourceM.count);
    return self.dataSourceM.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    AIGroupModel *groupModel = self.dataSourceM[section];
    return groupModel.groupConfigM.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //创建cell
    AIConfigCell *cell = [AIConfigCell cellWithTabelView:tableView];
    //传递模型
    AIGroupModel *groupModel = self.dataSourceM[indexPath.section];
    AIConfigBaseItemModel *configModel = groupModel.groupConfigM[indexPath.row];
    
    cell.item = configModel;
    //返回cell
    return cell;
}

#warning mark -通过UIView设置头尾控件的方法第一个头不会出现？？？
/*-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
 
 UILabel *label = [[UILabel alloc]init];
 AIGroupModel *groupModel = self.dataSourceM[section];
 
 label.text = groupModel.groupHeader;
 return label;
 }
 
 -(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
 UILabel *label = [[UILabel alloc]init];
 AIGroupModel *groupModel = self.dataSourceM[section];
 
 label.text = groupModel.groupFoot;
 return label;
 }*/

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    AIGroupModel *groupModel = self.dataSourceM[section];
    return groupModel.groupHeader;
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    AIGroupModel *groupModel = self.dataSourceM[section];
    return groupModel.groupFoot;
}


@end
