//
//  ViewController.m
//  project2
//
//  Created by Alexander Herrera on 11/1/12.
//  Copyright (c) 2012 Alexander Herrera. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	self.view.backgroundColor = [UIColor blueColor];
	//Title Text:
		titleText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 40.f)];
		//Make sure label was created by using an if statement:
		if (titleText != nil) {
			titleText.text = @"Steve Jobs";
			titleText.textColor = [UIColor redColor];
			titleText.backgroundColor = [UIColor darkGrayColor];
			titleText.textAlignment = UITextAlignmentCenter;
		}
		//Need to add the label as a child of the UI view:
		//[self.view addSubview:titleLabel];
	//Author Label:
		authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 60.0f, 60.0f, 20.0f)];
		if (authorLabel != nil) {
			authorLabel.text = @"Author:";
			authorLabel.textColor = [UIColor purpleColor];
			authorLabel.backgroundColor = [UIColor cyanColor];
			authorLabel.textAlignment = UITextAlignmentLeft;
		}
	//Author Text:
		authorText = [[UILabel alloc] initWithFrame:CGRectMake(80.0f, 60.0f, 260.0f, 20.0f)];
		if (authorText != nil) {
			authorText.text = @"Walter Isaacson";
			authorText.textColor = [UIColor greenColor];
			authorText.backgroundColor = [UIColor brownColor];
			authorText.textAlignment = UITextAlignmentLeft;
		}
	//Published Label:
		publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 110.0f, 20.0f)];
		if (publishedLabel != nil) {
			publishedLabel.text = @"Published On:";
			publishedLabel.textColor = [UIColor blackColor];
			publishedLabel.backgroundColor = [UIColor redColor];
			publishedLabel.textAlignment = UITextAlignmentLeft;
		}
	//Published Text:
		publishedText = [[UILabel alloc] initWithFrame:CGRectMake(130.0f, 100.0f, 260.0f, 20.0f)];
		if (publishedText != nil) {
			publishedText.text = @"November 21,2011";
			publishedText.textColor = [UIColor yellowColor];
			publishedText.backgroundColor = [UIColor magentaColor];
			publishedText.textAlignment = UITextAlignmentLeft;
		}
	//Summary Label:
		summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 140.0f, 80.0f, 20.0f)];
		if (summaryLabel != nil) {
			summaryLabel.text = @"Summary:";
			summaryLabel.textColor = [UIColor orangeColor];
			summaryLabel.backgroundColor = [UIColor darkGrayColor];
			summaryLabel.textAlignment = UITextAlignmentLeft;
		}
	//Summary Text:
		summaryText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 180.0f, 320.0f, 120.0f)];
		if (summaryText != nil) {
			summaryText.text = @"This book explains Steve Jobs life at a personal and career level. The author explains how Steve Jobs did not want to basically sugar code and he wanted for the people to know his real story.";
			summaryText.textColor = [UIColor blackColor];
			summaryText.backgroundColor = [UIColor orangeColor];
			summaryText.textAlignment = UITextAlignmentLeft;
			summaryText.numberOfLines = 6;
		}
			
		listStrings = [[NSArray alloc] initWithObjects:@"Apple I",@"NeXT",@"Pixar", @"iTunes Store", @"The iPhone", nil];

		//List of Items Label:
		listLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 320.0f, 105.0f, 20.0f)];
		if (listLabel != nil) {
			listLabel.text = @"List Of Items:";
			listLabel.textColor = [UIColor orangeColor];
			listLabel.backgroundColor = [UIColor greenColor];
			listLabel.textAlignment = UITextAlignmentLeft;
		}
	
			mutableList = [[NSMutableString alloc] initWithCapacity:5];
			for (int i = 0; i < [listStrings count]; i++) {
				[mutableList appendString:[listStrings objectAtIndex:i]];
				if (i < listStrings.count -1) {
					[mutableList appendString:@", "];
				//[self.view addSubview:[mutableList objectAtIndex:i]];
				}
			}
			//List of Items Text:
		listText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 360.0f, 220.0f, 50.0f)];
		if (listText != nil) {
			listText.text = mutableList;
			listText.textColor = [UIColor darkGrayColor];
			listText.backgroundColor = [UIColor purpleColor];
			listText.textAlignment = UITextAlignmentLeft;
			listText.numberOfLines = 2;
		}
		book = [NSArray arrayWithObjects:titleText, authorLabel, authorText, publishedLabel, publishedText, summaryLabel, summaryText, listLabel, listText, nil];
	for (int i = 0; i < [book count]; i++){
		[self.view addSubview:[book objectAtIndex:i]];
	}
	NSLog(@"%@", [book objectAtIndex:0]);
	[super viewDidLoad];
		// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end