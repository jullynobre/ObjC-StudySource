//
//  Time.h
//  BasqueteJogo
//
//  Created by Ada 2018 on 22/02/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Time : NSObject

@property NSMutableDictionary* jogadores;
@property NSInteger pontuacao;
@property NSString* sigla;
@property NSInteger vitorias;

-(id) init: (NSString*) sigla;
-(void) adicionarJogador:(NSString*) numeroCamisa NomeJogador:(NSString*)nomeJogador;
-(void) removerJogador:(NSString*) numeroCamisa;
-(void) mostrarJogadores;


@end
