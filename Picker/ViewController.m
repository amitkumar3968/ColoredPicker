//
//  ViewController.m
//  Picker
//
//  Created by Admin on 10/3/13.
//  Copyright (c) 2013 Admin. All rights reserved.
//

#import "ViewController.h"




 

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}



 
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setColoredPicker:nil];
    [super viewDidUnload];
}

#pragma mark Datasource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    

    
    return 10;
}
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    
       
    UIView *pv=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 40)];
    pv.backgroundColor=[UIColor purpleColor];
    UILabel *lbl=[[UILabel alloc]initWithFrame:CGRectMake(50, 0, 300, 40)];
    lbl.text=[NSString stringWithFormat:@"%d",row];
    lbl.backgroundColor=[UIColor clearColor];
    [pv addSubview:lbl];
    lbl=nil;
    [ColoredPicker setcolorofpicker:pickerView andcolor:[UIColor yellowColor]];

       return pv;
    
    
}

 @end


