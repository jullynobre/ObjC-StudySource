//
//  main.m
//  BasqueteJogo
//
//  Created by Ada 2018 on 22/02/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Time.h"
#import "Jogo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Jogo* jogo;
        
        Time* time1 = [[Time alloc] init:@"SPA"];
        Time* time2 = [[Time alloc] init:@"FEC"];
        
        [time1 adicionarJogador:@"10" NomeJogador:@"Alan"];
        [time1 adicionarJogador:@"9" NomeJogador:@"Jully"];
        [time1 adicionarJogador:@"8" NomeJogador:@"Rafael"];
        [time1 adicionarJogador:@"7" NomeJogador:@"Davi"];
        [time1 adicionarJogador:@"6" NomeJogador:@"Alysson"];
        [time1 adicionarJogador:@"5" NomeJogador:@"Matheus"];
        [time1 adicionarJogador:@"4" NomeJogador:@"Valente"];
        [time1 adicionarJogador:@"3" NomeJogador:@"Martonio"];
        [time1 adicionarJogador:@"2" NomeJogador:@"Amanda"];
        [time1 adicionarJogador:@"1" NomeJogador:@"Alcydes"];
        
        [time2 adicionarJogador:@"1" NomeJogador:@"Renan"];
        [time2 adicionarJogador:@"2" NomeJogador:@"Levy"];
        [time2 adicionarJogador:@"3" NomeJogador:@"Garrafa"];
        [time2 adicionarJogador:@"4" NomeJogador:@"Daniel"];
        [time2 adicionarJogador:@"5" NomeJogador:@"Guilherme"];
        [time2 adicionarJogador:@"6" NomeJogador:@"Ramires"];
        [time2 adicionarJogador:@"7" NomeJogador:@"João"];
        [time2 adicionarJogador:@"8" NomeJogador:@"Adalto"];
        [time2 adicionarJogador:@"9" NomeJogador:@"Cibele"];
        [time2 adicionarJogador:@"10" NomeJogador:@"Palhares"];
        
        jogo = [[Jogo alloc] init:time1 Time2:time2];
        
        [jogo iniciarTimeCampo:time1 jogador1:@"1" jogador2:@"2" jogador3:@"3" jogador4:@"4" jogador5:@"5"];
        [jogo iniciarTimeCampo:time2 jogador1:@"1" jogador2:@"2" jogador3:@"3" jogador4:@"4" jogador5:@"5"];
        
        
        [jogo trocarJogador:time1 CamisaSaida:@"5" CamisaEntrada:@"10"];
        [jogo incrementarPontuacao:time1 pontuacao:15 CamisaJogador:@"10"];
        
        [jogo mostrarPlacar];
        [jogo.time1 mostrarJogadores];
        
        
    }
    return 0;
}
