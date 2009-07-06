#import "Controller.h"

@implementation Controller
- (IBAction)decreaseSides:(id)sender {
    NSLog(@"In the decrease action.");
    [polygon setNumberOfSides:([polygon numberOfSides] - 1)];
    [self updateInterface];
}

- (IBAction)increaseSides:(id)sender {
    NSLog(@"In the increase action.");
    [polygon setNumberOfSides:([polygon numberOfSides] + 1)];    
    [self updateInterface];
}

- (void)awakeFromNib { 
    polygon = [[PolygonShape alloc] initWithNumberOfSides:numberOfSidesLabel.text.integerValue minimumNumberOfSides:3 maximumNumberOfSides:12];
    [polygon retain];
    NSLog(@"My polygon awoken from nib: %@", [polygon description]);
    [polygon autorelease];
    [self updateInterface];
}

- (void)updateInterface { 
    // set interface state here
    NSLog(@"Updating interface: determining increase / decrease button states.");

    // update number of sides
    int sides = [polygon numberOfSides];
    increaseSidesButton.enabled = [polygon isValidMaximumNumberOfSides:(sides + 1)];
    decreaseSidesButton.enabled = [polygon isValidMinimumNumberOfSides:(sides - 1)];
    numberOfSidesLabel.text = [NSString stringWithFormat:@"%d", sides];
    degreesLabel.text = [NSString stringWithFormat:@"%d", (int) [polygon angleInDegrees]];
    radiansLabel.text = [NSString stringWithFormat:@"%.6f", [polygon angleInRadians]];
    minSidesLabel.text = [NSString stringWithFormat:@"%d", [polygon minimumNumberOfSides]];
    maxSidesLabel.text = [NSString stringWithFormat:@"%d", [polygon maximumNumberOfSides]];
    shapeNameLabel.text = [NSString stringWithFormat:@"%@", [polygon name]];
}

@end
