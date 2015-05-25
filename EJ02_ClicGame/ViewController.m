//
//  ViewController.m
//  EJ02_ClicGame
//
//  Created by tarde on 25/5/15.
//  Copyright (c) 2015 a13marcosve. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelPuntuacion;
@property (weak, nonatomic) IBOutlet UILabel *labelTiempo;
//prpeperties del juego
@property NSInteger tiempo;
@property NSInteger puntuacion;

//properties de audio
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage* miFondo = [UIImage imageNamed:@"fondo"];
    UIColor* miColorDeFondo =  [UIColor colorWithPatternImage:miFondo];
    [[self view]setBackgroundColor:miColorDeFondo];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pulsarBoton{
    _puntuacion ++;
    [_labelPuntuacion setText:[NSString stringWithFormat:@"PUNTUACION , %ld",_puntuacion]];
}

@end
