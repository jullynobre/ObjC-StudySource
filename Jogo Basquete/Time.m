//
//  Time.m
//  BasqueteJogo
//
//  Created by Ada 2018 on 22/02/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

#import "Time.h"

@implementation Time

-(id) init: (NSString*) sigla{
    if(self = [super init]){
        _sigla = sigla;
        _pontuacao = 0;
        _vitorias = 0;
        _jogadores = [[NSMutableDictionary alloc] initWithCapacity:10];
    }return  self;
}


-(void) adicionarJogador:(NSString*) numeroCamisa NomeJogador:(NSString*)nomeJogador{
    NSString *dadoJogador = [[NSString alloc] initWithFormat:@"0 - %@", nomeJogador];
    [_jogadores setObject:dadoJogador forKey:numeroCamisa];
}
-(void) removerJogador:(NSString*) numeroCamisa{
    [_jogadores removeObjectForKey:numeroCamisa];
}

-(void) mostrarJogadores{
    NSMutableArray *sortedKeys = [NSMutableArray array];
    
    NSArray *objs = [_jogadores allValues];
    
    NSArray *sortedObjs = [objs sortedArrayUsingSelector:@selector(compare:)];
    for (NSString *s in sortedObjs)
        [sortedKeys addObjectsFromArray:[_jogadores allKeysForObject:s]];
    
    for(int i = 9; i >=  0; i--)
    {
        NSLog(@"%@", sortedObjs[i]);
    }
}
@end
