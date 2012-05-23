//
//  TimeViewController.h
//  MyTimeMachine
//
//  Created by nachi on 22/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeViewController : UIViewController<UITextFieldDelegate>
{
    
    IBOutlet UITextField *txtTue;
    IBOutlet UITextField *txtMon;
    IBOutlet UITextField *txtWed;   
    IBOutlet UITextField *txtThu;
    IBOutlet UITextField *txtFri;
    IBOutlet UITextField *txtSat;
    IBOutlet UITextField *txtSun;
    
    IBOutlet UITextField *txtMonMeridian;
    IBOutlet UITextField *txtTueMeridian;
    IBOutlet UITextField *txtWedMeridian;
    IBOutlet UITextField *txtThuMeridian;
    IBOutlet UITextField *txtFriMeridian;
    IBOutlet UITextField *txtSatMeridian;
    IBOutlet UITextField *txtSunMeridian;
    
    
    IBOutlet UITextField *txtEndMon;
    IBOutlet UITextField *txtEndTue;
    IBOutlet UITextField *txtEndWed;
    IBOutlet UITextField *txtEndThu;
    IBOutlet UITextField *txtEndFri;
    IBOutlet UITextField *txtEndSat;
    IBOutlet UITextField *txtEndSun;
    
    IBOutlet UITextField *txtMonEndMeridian;
    IBOutlet UITextField *txtTueEndMeridian;
    IBOutlet UITextField *txtWedEndMeridian;
    IBOutlet UITextField *txtThuEndMeridian;
    IBOutlet UITextField *txtFriEndMeridian;
    IBOutlet UITextField *txtSatEndMeridian;
    IBOutlet UITextField *txtSunEndMeridian;
    
    NSMutableArray *array;
    BOOL valid;
    
}
@property (retain, nonatomic) IBOutlet UILabel *LableMon;
@property (retain, nonatomic) IBOutlet UILabel *LableTue;
@property (retain, nonatomic) IBOutlet UILabel *LableWed;
@property (retain, nonatomic) IBOutlet UILabel *LableThu;
@property (retain, nonatomic) IBOutlet UILabel *LableFri;
@property (retain, nonatomic) IBOutlet UILabel *LableSat;
@property (retain, nonatomic) IBOutlet UILabel *LableSun;

- (IBAction)ButtonShow:(id)sender;
- (void) validateMeridians;



@end
