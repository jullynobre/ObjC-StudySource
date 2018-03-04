//
//  Jogo.h
//  BasqueteJogo
//
//  Created by Ada 2018 on 22/02/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Time.h"

@interface Jogo : NSObject

@property Time* time1;
@property Time* time2;
@property NSMutableDictionary* jogadoresCampoTime1;
@property NSMutableDictionary* jogadoresCampoTime2;
@property NSInteger pontuacaoTime1;
@property NSInteger pontuacaoTime2;

-(id) init: (Time*) time1 Time2 : (Time*) time2;
-(void) incrementarPontuacao:(Time*)time pontuacao: (NSInteger)pontuacao CamisaJogador:(NSString*)camisaJogador;
-(void) encerrarPartida;
-(void) trocarJogador: (Time*)time CamisaSaida:(NSString*)camisaSaida CamisaEntrada:(NSString*)camisaentrada;
-(void) iniciarTimeCampo: (Time*)time jogador1 : (NSString*)j1 jogador2 : (NSString*) j2 jogador3 : (NSString*) j3 jogador4 : (NSString*) j4 jogador5 : (NSString*) j5;
-(void) iniciarJogo;
-(void) mostrarPlacar;

@end
