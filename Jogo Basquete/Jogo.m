//
//  Jogo.m
//  BasqueteJogo
//
//  Created by Ada 2018 on 22/02/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

#import "Jogo.h"

@implementation Jogo

-(id) init: (Time*) time1 Time2 : (Time*) time2{
    if(self = [super init]){
        _time1 = time1;
        _time2 = time2;
        _jogadoresCampoTime1 = [[NSMutableDictionary alloc] initWithCapacity:5];
        _jogadoresCampoTime2 = [[NSMutableDictionary alloc] initWithCapacity:5];
    }return  self;

}

-(void) incrementarPontuacao:(Time*)time pontuacao: (NSInteger)pontuacao CamisaJogador:(NSString*)camisaJogador{
    time.pontuacao += pontuacao;
    
    NSString* dadosJogador = time.jogadores[camisaJogador];
    NSArray *dadosSplited = [dadosJogador componentsSeparatedByString:@" - "];
    
    NSInteger pontuacaoAntiga = [dadosSplited[0] integerValue];
    pontuacaoAntiga += pontuacao;
    
    NSString *jogador = [[NSString alloc] initWithFormat:@"%ld - %@",(long)pontuacaoAntiga, dadosSplited[1]];
    
    time.jogadores[camisaJogador] = jogador;
    
    if (time.sigla == _time1.sigla) {
        _pontuacaoTime1 += pontuacao;
        _jogadoresCampoTime1[camisaJogador] = jogador;
    }else{
        _pontuacaoTime2 += pontuacao;
        _jogadoresCampoTime2[camisaJogador] = jogador;
    }
    
}
-(void) encerrarPartida{
    if(_time1.pontuacao > _time2.pontuacao){
        _time1.vitorias++;
        NSLog(@"Time 1 Ganhou!!!");
    }else if(_time2.pontuacao > _time1.pontuacao){
        _time2.vitorias++;
        NSLog(@"Time 2 Ganhou!!!");
    }else{
        NSLog(@"Jogo Empatado!");
    }
    
    
}
-(void) trocarJogador: (Time*)time CamisaSaida:(NSString*)camisaSaida CamisaEntrada:(NSString*)camisaentrada{
    if (time.sigla == _time1.sigla) {
        [_jogadoresCampoTime1 removeObjectForKey:camisaSaida];
        _jogadoresCampoTime1[camisaentrada] = time.jogadores[camisaentrada];
    }else{
        [_jogadoresCampoTime2 removeObjectForKey:camisaSaida];
        _jogadoresCampoTime2[camisaentrada] = time.jogadores[camisaentrada];
    }
}

-(void) iniciarTimeCampo: (Time*)time jogador1 : (NSString*)j1 jogador2 : (NSString*) j2 jogador3 : (NSString*) j3 jogador4 : (NSString*) j4 jogador5 : (NSString*) j5
{
    if (time.sigla == _time1.sigla) {
        [_jogadoresCampoTime1 setObject:_time1.jogadores[j1] forKey:j1];
        [_jogadoresCampoTime1 setObject:_time1.jogadores[j2] forKey:j2];
        [_jogadoresCampoTime1 setObject:_time1.jogadores[j3] forKey:j3];
        [_jogadoresCampoTime1 setObject:_time1.jogadores[j4] forKey:j4];
        [_jogadoresCampoTime1 setObject:_time1.jogadores[j5] forKey:j5];
    }else{
        [_jogadoresCampoTime2 setObject:_time2.jogadores[j1] forKey:j1];
        [_jogadoresCampoTime2 setObject:_time2.jogadores[j2] forKey:j2];
        [_jogadoresCampoTime2 setObject:_time2.jogadores[j3] forKey:j3];
        [_jogadoresCampoTime2 setObject:_time2.jogadores[j4] forKey:j4];
        [_jogadoresCampoTime2 setObject:_time2.jogadores[j5] forKey:j5];
    }
}

-(void)iniciarJogo{
    NSLog(@"******JOGO INICIADO******");
    NSLog(@"*****%@ vs %@ ******",_time1.sigla,_time2.sigla);
    NSLog(@"Jogadores TIME 1\n\n");
    for (NSString *key in _jogadoresCampoTime1){
        NSLog(@"%@",_jogadoresCampoTime1[key]);
    }
    NSLog(@"Jogadores TIME 2\n\n");
    for (NSString *key in _jogadoresCampoTime2){
        NSLog(@"%@",_jogadoresCampoTime2[key]);
    }
}

-(void) mostrarPlacar{
    NSLog(@"****PLACAR****");
    NSLog(@"%@ - %ld X %ld - %@",_time1.sigla,(long)_pontuacaoTime1,(long)_pontuacaoTime2,_time2.sigla);
}

@end
