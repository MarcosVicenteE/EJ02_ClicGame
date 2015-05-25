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
//property de temporizador
@property NSTimer* timerTiempo;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage* miFondo = [UIImage imageNamed:@"fondo"];
    UIColor* miColorDeFondo =  [UIColor colorWithPatternImage:miFondo];
    [[self view]setBackgroundColor:miColorDeFondo];
    [self initialize];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pulsarBoton{
    _puntuacion ++;
    [_labelPuntuacion setText:[NSString stringWithFormat:@"PUNTUACION , %ld",_puntuacion]];
}
-(void)initialize{
    _tiempo = 30;
    _puntuacion = 0 ;
    
    //temporizador
    _timerTiempo =[ NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(RestarTiempo) userInfo:nil repeats:YES];
}
-(void)RestarTiempo{
    _tiempo--;
   // [_labelTiempo setText:_tiempo];
    if(_tiempo == 0){
        
    }
}
@end
