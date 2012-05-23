//
//  DisplayController.h
//  MyTimeMachine
//
//  Created by nachi on 22/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TimeChart.h"


@interface DisplayController : UIViewController
{
 NSMutableArray *timeChartArray;
    NSMutableArray *DispArray;
    TimeChart *timeChart1;
    TimeChart *timeChart2;
    TimeChart *timeChart3;
    int i;
    int j;
    IBOutlet UITableView *dispTable;
}
- (id)init:(NSMutableArray *)_timeChartArray;
-(void)CheckEntries;
@end
