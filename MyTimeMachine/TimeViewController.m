//
//  TimeViewController.m
//  MyTimeMachine
//
//  Created by nachi on 22/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TimeViewController.h"
#import "TimeChart.h"
#import "DisplayController.h"

@implementation TimeViewController
@synthesize LableMon;
@synthesize LableTue;
@synthesize LableWed;
@synthesize LableThu;
@synthesize LableFri;
@synthesize LableSat;
@synthesize LableSun;


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
    [super viewDidLoad];
    self.title=@"Employee In/Out Timings";   
    
    /*txtMonMeridian.tag = 1;
    txtMonEndMeridian.tag = 8;
    */
    
    
    
    
    array=[[NSMutableArray alloc]init];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [txtMon resignFirstResponder];
     [txtTue resignFirstResponder];
     [txtWed resignFirstResponder];
     [txtThu resignFirstResponder];
     [txtFri resignFirstResponder];
     [txtSat resignFirstResponder];
     [txtSun resignFirstResponder];
     [txtEndMon resignFirstResponder];
     [txtEndTue resignFirstResponder];
     [txtEndWed resignFirstResponder];
     [txtEndThu resignFirstResponder];
     [txtEndFri resignFirstResponder];
     [txtEndSat resignFirstResponder];
     [txtEndSun resignFirstResponder];
     [txtMonMeridian resignFirstResponder];
     [txtTueMeridian resignFirstResponder];
     [txtWedMeridian resignFirstResponder];
     [txtThuMeridian resignFirstResponder];
     [txtFriMeridian resignFirstResponder];
     [txtSatMeridian resignFirstResponder];
     [txtSunMeridian resignFirstResponder];
     [txtMonEndMeridian resignFirstResponder];
     [txtTueEndMeridian resignFirstResponder];
    [txtWedEndMeridian resignFirstResponder];
    [txtThuEndMeridian resignFirstResponder];
    [txtFriEndMeridian resignFirstResponder];
    [txtSatEndMeridian resignFirstResponder];
    [txtSunEndMeridian resignFirstResponder];
    
    return YES;
}

- (void)viewDidUnload
{
    [txtMon release];
    txtMon = nil;
    [txtMon release];
    txtMon = nil;
    [txtTue release];
    txtTue = nil;
    [txtWed release];
    txtWed = nil;
    [txtThu release];
    txtThu = nil;
    [txtFri release];
    txtFri = nil;
    [txtSat release];
    txtSat = nil;
    [txtSun release];
    txtSun = nil;
    [txtMonMeridian release];
    txtMonMeridian = nil;
    [txtTueMeridian release];
    txtTueMeridian = nil;
    [txtWedMeridian release];
    txtWedMeridian = nil;
    [txtFriMeridian release];
    txtFriMeridian = nil;
    [txtSatMeridian release];
    txtSatMeridian = nil;
    [txtThuMeridian release];
    txtThuMeridian = nil;
    [txtFriMeridian release];
    txtFriMeridian = nil;
    [txtSatMeridian release];
    txtSatMeridian = nil;
    [txtSunMeridian release];
    txtSunMeridian = nil;
    [txtEndMon release];
    txtEndMon = nil;
    [txtEndTue release];
    txtEndTue = nil;
    [txtEndWed release];
    txtEndWed = nil;
    [txtEndThu release];
    txtEndThu = nil;
    [txtEndFri release];
    txtEndFri = nil;
    [txtEndSat release];
    txtEndSat = nil;
    [txtEndSun release];
    txtEndSun = nil;
    [txtMonEndMeridian release];
    txtMonEndMeridian = nil;
    [txtTueEndMeridian release];
    txtTueEndMeridian = nil;
    [txtWedEndMeridian release];
    txtWedEndMeridian = nil;
    [txtThuEndMeridian release];
    txtThuEndMeridian = nil;
    [txtFriEndMeridian release];
    txtFriEndMeridian = nil;
    [txtSatEndMeridian release];
    txtSatEndMeridian = nil;
    [txtSunEndMeridian release];
    txtSunEndMeridian = nil;
    [self setLableMon:nil];
    [self setLableTue:nil];
    [self setLableWed:nil];
    [self setLableThu:nil];
    [self setLableFri:nil];
    [self setLableSat:nil];
    [self setLableSun:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [txtMon release];
    [txtTue release];
    [txtMon release];
    [txtTue release];
    [txtWed release];
    [txtThu release];
    [txtFri release];
    [txtSat release];
    [txtSun release];
    [txtMonMeridian release];
    [txtTueMeridian release];
    [txtWedMeridian release];
    [txtFriMeridian release];
    [txtSatMeridian release];
    [txtThuMeridian release];
    [txtFriMeridian release];
    [txtSatMeridian release];
    [txtSunMeridian release];
    [txtEndMon release];
    [txtEndTue release];
    [txtEndWed release];
    [txtEndThu release];
    [txtEndFri release];
    [txtEndSat release];
    [txtEndSun release];
    [txtMonEndMeridian release];
    [txtTueEndMeridian release];
    [txtWedEndMeridian release];
    [txtThuEndMeridian release];
    [txtFriEndMeridian release];
    [txtSatEndMeridian release];
    [txtSunEndMeridian release];
    [LableMon release];
    [LableTue release];
    [LableWed release];
    [LableThu release];
    [LableFri release];
    [LableSat release];
    [LableSun release];
    [super dealloc];
}

- (void) validateMeridians
{
   
        
    if ([txtMonMeridian.text isEqualToString:@"pm"] && [txtMonEndMeridian.text isEqualToString:@"am"])
    {
        NSLog(@"Invalid 1st condition Monday");
        valid = false;
    }
    else if([txtMonMeridian.text isEqualToString:@"am"] && [txtMonEndMeridian.text isEqualToString:@"am"])
    {
        if([txtMon.text intValue] > [txtEndMon.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Monday");
        }
    }
    else if([txtMonMeridian.text isEqualToString:@"pm"] && [txtMonEndMeridian.text isEqualToString:@"pm"])
    {
        if([txtMon.text intValue] > [txtEndMon.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Monday");
        }
    }

    if ([txtTueMeridian.text isEqualToString:@"pm"] && [txtTueEndMeridian.text isEqualToString:@"am"])
    {
        NSLog(@"Invalid 1st condition Tue");
        valid = false;
    }
    else if([txtTueMeridian.text isEqualToString:@"am"] && [txtTueEndMeridian.text isEqualToString:@"am"])
    {
        if([txtTue.text intValue] > [txtEndTue.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Tue");
        }
    }
    else if([txtTueMeridian.text isEqualToString:@"pm"] && [txtTueEndMeridian.text isEqualToString:@"pm"])
    {
        if([txtTue.text intValue] > [txtEndTue.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Tue");
        }
    }

    if ([txtWedMeridian.text isEqualToString:@"pm"] && [txtWedEndMeridian.text isEqualToString:@"am"])
    {
        NSLog(@"Invalid 1st condition Wed");
        valid = false;
    }
    else if([txtWedMeridian.text isEqualToString:@"am"] && [txtWedEndMeridian.text isEqualToString:@"am"])
    {
        if([txtWed.text intValue] > [txtEndWed.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Wed");
        }
    }
    else if([txtWedMeridian.text isEqualToString:@"pm"] && [txtWedEndMeridian.text isEqualToString:@"pm"])
    {
        if([txtWed.text intValue] > [txtEndWed.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Wed");
        }
    }

    if ([txtThuMeridian.text isEqualToString:@"pm"] && [txtThuEndMeridian.text isEqualToString:@"am"])
    {
        NSLog(@"Invalid 1st condition Thu");
        valid = false;
    }
    else if([txtThuMeridian.text isEqualToString:@"am"] && [txtThuEndMeridian.text isEqualToString:@"am"])
    {
        if([txtThu.text intValue] > [txtEndThu.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Thu");
        }
    }
    else if([txtThuMeridian.text isEqualToString:@"pm"] && [txtThuEndMeridian.text isEqualToString:@"pm"])
    {
        if([txtThu.text intValue] > [txtEndThu.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Thu");
        }
    }
    if ([txtFriMeridian.text isEqualToString:@"pm"] && [txtFriEndMeridian.text isEqualToString:@"am"])
    {
        NSLog(@"Invalid 1st condition Fri");
        valid = false;
    }
    else if([txtFriMeridian.text isEqualToString:@"am"] && [txtFriEndMeridian.text isEqualToString:@"am"])
    {
        if([txtFri.text intValue] > [txtEndFri.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Fri");
        }
    }
    else if([txtFriMeridian.text isEqualToString:@"pm"] && [txtFriEndMeridian.text isEqualToString:@"pm"])
    {
        if([txtFri.text intValue] > [txtEndFri.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Fri");
        }
    }

    if ([txtSatMeridian.text isEqualToString:@"pm"] && [txtSatEndMeridian.text isEqualToString:@"am"])
    {
        NSLog(@"Invalid 1st condition Sat");
        valid = false;
    }
    else if([txtSatMeridian.text isEqualToString:@"am"] && [txtSatEndMeridian.text isEqualToString:@"am"])
    {
        if([txtSat.text intValue] > [txtEndSat.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Sat");
        }
    }
    else if([txtSatMeridian.text isEqualToString:@"pm"] && [txtSatEndMeridian.text isEqualToString:@"pm"])
    {
        if([txtSat.text intValue] > [txtEndSat.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Sat");
        }
    }
    if ([txtSunMeridian.text isEqualToString:@"pm"] && [txtSunEndMeridian.text isEqualToString:@"am"])
    {
        NSLog(@"Invalid 1st condition Sun");
        valid = false;
    }
    else if([txtSunMeridian.text isEqualToString:@"am"] && [txtSunEndMeridian.text isEqualToString:@"am"])
    {
        if([txtSun.text intValue] > [txtEndSun.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Sun");
        }
    }
    else if([txtSunMeridian.text isEqualToString:@"pm"] && [txtSunEndMeridian.text isEqualToString:@"pm"])
    {
        if([txtSun.text intValue] > [txtEndSun.text intValue])
        {
            valid = false;
            NSLog(@"Invalid 2nd condition Sun");
        }
    }


}
- (IBAction)ButtonShow:(id)sender {
    valid=true;
    [self validateMeridians];
    if (valid == false) {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Invalid Entries !!" message:@"Did Wrong Entries" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        [alert release];

        NSLog(@"Invalid");
    }
    else if(valid == true)
    {
        TimeChart *time1=[[TimeChart alloc]init];
        time1.day=LableMon.text;
        time1.startTime=[NSString stringWithFormat:@" %@ %@",txtMon.text,txtMonMeridian.text];
        time1.endTime=[NSString stringWithFormat:@" %@ %@",txtEndMon.text,txtMonEndMeridian.text];
        [array addObject:time1];
        [time1 release];
        
        TimeChart *time2=[[TimeChart alloc]init];
        time2.day=LableTue.text;
        time2.startTime=[NSString stringWithFormat:@" %@ %@",txtTue.text,txtTueMeridian.text];
        time2.endTime=[NSString stringWithFormat:@" %@ %@",txtEndTue.text,txtTueEndMeridian.text];
        [array addObject:time2];
        [time2 release];
        
        TimeChart *time3=[[TimeChart alloc]init];
        time3.day=LableWed.text;
        time3.startTime=[NSString stringWithFormat:@" %@ %@",txtWed.text,txtWedMeridian.text];
        time3.endTime=[NSString stringWithFormat:@" %@ %@",txtEndWed.text,txtWedEndMeridian.text];
        [array addObject:time3];
        [time3 release];
        
        TimeChart *time4=[[TimeChart alloc]init];
        time4.day=LableThu.text;
        time4.startTime=[NSString stringWithFormat:@" %@ %@",txtThu.text,txtThuMeridian.text];
        time4.endTime=[NSString stringWithFormat:@" %@ %@",txtEndThu.text,txtThuEndMeridian.text];
        [array addObject:time4];
        [time4 release];
        
        TimeChart *time5=[[TimeChart alloc]init];
        time5.day=LableFri.text;
        time5.startTime=[NSString stringWithFormat:@" %@ %@",txtFri.text,txtFriMeridian.text];
        time5.endTime=[NSString stringWithFormat:@" %@ %@",txtEndFri.text,txtFriEndMeridian.text];
        [array addObject:time5];
        [time5 release];
        
        TimeChart *time6=[[TimeChart alloc]init];
        time6.day=LableSat.text;
        time6.startTime=[NSString stringWithFormat:@" %@ %@",txtSat.text,txtSatMeridian.text];
        time6.endTime=[NSString stringWithFormat:@" %@ %@",txtEndSat.text,txtSatEndMeridian.text];
        [array addObject:time6];
        [time6 release];
        
        TimeChart *time7=[[TimeChart alloc]init];
        time7.day=LableSun.text;
        time7.startTime=[NSString stringWithFormat:@" %@ %@",txtSun.text,txtSunMeridian.text];
        time7.endTime=[NSString stringWithFormat:@" %@ %@",txtEndSun.text,txtSunEndMeridian.text];
        [array addObject:time7];
        [time7 release];
        for(TimeChart *t in array)
        {
            NSLog(@"Array: %@ %@ %@",t.day,t.startTime,t.endTime);
        }
        
        
        DisplayController *display=[[DisplayController alloc] init:array];
        [self.navigationController pushViewController:display animated:YES];
        //  [self presentModalViewController:display animated:YES];
        [display release];
    }
    
        
}
@end
