//
//  DisplayController.m
//  MyTimeMachine
//
//  Created by nachi on 22/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DisplayController.h"
#import "TimeChart.h"
#import "TimeViewController.h"

@implementation DisplayController

- (id)init:(NSMutableArray *)_timeChartArray
{
    self = [super init];
    if (self) {
        timeChartArray=_timeChartArray;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    for(TimeChart *t in timeChartArray)
    {
        NSLog(@"Array: %@ %@ %@",t.day,t.startTime,t.endTime);
    }
    DispArray=[[NSMutableArray alloc]init];
    [self CheckEntries];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [dispTable release];
    dispTable = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)CheckEntries
{
    bool flag=false;
    timeChart1=[[TimeChart alloc]init];
    timeChart2=[[TimeChart alloc]init];   
    for (i=0; i<timeChartArray.count; i++) {
        
              
        for (j=i+1; j<timeChartArray.count; j++) {
            
        timeChart1=[timeChartArray objectAtIndex:i];
            
        timeChart2=[timeChartArray objectAtIndex:j];
        
        if([timeChart1.startTime isEqualToString:timeChart2.startTime]  && [timeChart1.endTime isEqualToString:timeChart2.endTime])
        {
            flag=true;
            
                   
        }
            else
            {
               
                if (flag==false) {
                    timeChart1=[timeChartArray objectAtIndex:i];
                    NSString *string1=[NSString stringWithFormat:@"%@  %@ to %@",timeChart1.day,timeChart1.startTime,timeChart1.endTime];
                    [DispArray addObject:string1];
                    NSLog(@"****");
                        
                   }

                
                
                if (flag==true) {
                    timeChart3=[[TimeChart alloc]init];
                    timeChart3=[timeChartArray objectAtIndex:j-1];
                    NSString *string=[NSString stringWithFormat:@"%@ - %@ %@ to %@", timeChart1.day, timeChart3.day, timeChart1.startTime, timeChart1.endTime];
                    
                    [DispArray addObject:string];
                    flag=false;
                   
                }
                i=j;
                //j=j+1;                                
            }
        }
        if (flag==true) {
            timeChart3=[timeChartArray objectAtIndex:j-1];
            NSString *string=[NSString stringWithFormat:@"%@ - %@ %@ to %@", timeChart1.day, timeChart3.day, timeChart1.startTime, timeChart1.endTime];
            
            [DispArray addObject:string];
            i=timeChartArray.count;
            
        }
        if(flag==false)
        {   
            timeChart1=[timeChartArray objectAtIndex:j-1];
        NSString *string1=[NSString stringWithFormat:@"%@  %@ to %@",timeChart1.day,timeChart1.startTime,timeChart1.endTime];
        [DispArray addObject:string1];  
        }
        }
       
    for(NSString *str in DispArray)
    {
        NSLog(@"DisplayArray: %@ ",str);
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return DispArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[dispTable dequeueReusableCellWithIdentifier:@"myId"];
    if(cell==nil)
    {
        cell=[[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myId"]autorelease];
    }
    NSString *str=[DispArray objectAtIndex:indexPath.row];
    cell.textLabel.text=str;
    return cell;
}


- (void)dealloc {
    [dispTable release];
    [super dealloc];
}
@end
