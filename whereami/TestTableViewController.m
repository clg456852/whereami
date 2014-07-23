//
//  TestTableViewController.m
//  whereami
//
//  Created by  plusub on 14-7-16.
//  Copyright (c) 2014年 plusub. All rights reserved.
//

#import "TestTableViewController.h"

@interface TestTableViewController ()

@end

@implementation TestTableViewController{
    BOOL _row0checked; BOOL _row1checked;BOOL _row2checked; BOOL _row3checked; BOOL _row4checked;
    NSString *_row0text; NSString *_row1text; NSString *_row2text; NSString *_row3text; NSString *_row4text;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _row0text = @"观看嫦娥⻜飞天和⽟玉兔升空的视频";
    _row1text = @"了解Sony a7和MBP的最新价格";
    _row2text = @"复习苍⽼老师的经典视频教程";
    _row3text = @"去电影院看地⼼心引⼒力";
   _row4text = @"看⻄西甲巴萨新败的⽐比赛回放";
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"checklist"];
    //cell.textLabel.text=@"ssss";
    UILabel *label = (UILabel*)[cell viewWithTag:1000];
    if(indexPath.row == 0){ label.text = _row0text;
    }else if(indexPath.row == 1){ label.text = _row1text;
    }else if(indexPath.row == 2){ label.text = _row2text;
    }else if(indexPath.row == 3){ label.text = _row3text;
    }else if(indexPath.row == 4){
        label.text = _row4text; }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{ UITableViewCell *cell =[tableView cellForRowAtIndexPath:indexPath];
    BOOL isChecked = NO;
    if(indexPath.row ==0){
        isChecked = _row0checked;
        _row0checked = !_row0checked;
    }else if(indexPath.row ==1){
        isChecked = _row1checked;
        _row1checked = !_row1checked;
    }else if(indexPath.row ==2){
        isChecked = _row2checked;
        _row2checked = !_row2checked;
    }else if(indexPath.row ==3){
        isChecked = _row3checked;
        _row3checked = !_row3checked;
    }else if(indexPath.row ==4){
        isChecked = _row4checked;
        _row4checked = !_row4checked; }
    else if(isChecked){
        cell.accessoryType = UITableViewCellAccessoryNone;
    }else{
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
