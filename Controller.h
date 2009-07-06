#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PolygonShape.h"

@interface Controller : NSObject {
    IBOutlet UIButton *decreaseSidesButton;
    IBOutlet UIButton *increaseSidesButton;

    IBOutlet UILabel *numberOfSidesLabel;
    IBOutlet UILabel *degreesLabel;
    IBOutlet UILabel *radiansLabel;
    IBOutlet UILabel *shapeNameLabel;
    IBOutlet UILabel *minSidesLabel;
    IBOutlet UILabel *maxSidesLabel;

    IBOutlet PolygonShape *polygon;
}
- (IBAction)decreaseSides:(id)sender;
- (IBAction)increaseSides:(id)sender;

- (void)updateInterface;

@end
