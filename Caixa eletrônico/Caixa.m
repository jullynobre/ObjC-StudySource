#import <Foundation/Foundation.h>
#include "stdlib.h"

#import "Caixa.h"
#import "Transacao.h"

@implementation Caixa

int notas[4] = {100, 50, 20, 10};

- (id)init {
    _qtdeNotasDisp = malloc(4 * sizeof(long));
    _opcaoSaque1 = malloc(4 * sizeof(long));
    _opcaoSaque2 = malloc(4 * sizeof(long));
    _historico = [[NSMutableArray alloc] init];
    if (self = [super init]) {
        for(int i = 0; i < 4; i++)
        {
            *(_qtdeNotasDisp + i) = 100;
            *(_opcaoSaque1 + i) = 0;
            *(_opcaoSaque1 + i) = 0;
        }
    }
    return self;
}

- (int) sacar : (int) valor Cliente:(Cliente *)cliente
{
    if(cliente.saldo >= valor)
    {
        int opcaoSaque = [self escolherOpcaoSaque:valor];
        for(int i = 0; i < 4; i++)
        {
            if(opcaoSaque == 1)
            {
                cliente.saldo -= _opcaoSaque1[i] * notas[i];
                _qtdeNotasDisp[i] -= _opcaoSaque1[i];
            } else if(opcaoSaque == 2)
            {
                cliente.saldo -= _opcaoSaque2[i] * notas[i];
                _qtdeNotasDisp[i] -= _opcaoSaque2[i];
            }
        }
        printf("\n\nR$ %d sacado da sua conta \nSaldo atual: %d", valor, (int)cliente.saldo);
        Transacao * saque = [[Transacao alloc] init:cliente valor:valor];
        [_historico addObject:saque];
        NSLog(@"%@", _historico);
        return 1;
    }
    return 0;
    
}

- (int) escolherOpcaoSaque : (int) valor
{
    int opcaoEscolhida = 0;
    
    [self gerarOpcoesSaque:valor ponteiro:_opcaoSaque1];
    [self gerarOpcoesSaque:valor ponteiro:_opcaoSaque2];
    
    [self mostarOpcoesSaque:1 ponteiro:_opcaoSaque1];
    [self mostarOpcoesSaque:2 ponteiro:_opcaoSaque2];
    printf("\nInforme a opcao escolhida: ");
    scanf("%d",  &opcaoEscolhida);
    
    return opcaoEscolhida;
}

- (void) mostarOpcoesSaque : (int) numero ponteiro : (NSInteger *) opcaoSaque
{
    printf("\nOpcao de saque %d: ", numero);
    for(int i = 0; i < 4; i++)
    {
        if(*(opcaoSaque + i) > 0)
        {
            printf("%ld notas de R$ %d ; ", *(opcaoSaque + i), notas[i]);
        }
    }
}

- (void) gerarOpcoesSaque:(int)valor ponteiro : (NSInteger *) opcaoSaque{
    printf("\n%d", valor);
    int notaSorteada = 0;
    while(valor > 0)
    {
        notaSorteada = arc4random_uniform(4);
        if(valor >= notas[notaSorteada] && *(_qtdeNotasDisp + notaSorteada) > 0)
        {
            valor -= notas[notaSorteada];
            *(opcaoSaque + notaSorteada) = *(opcaoSaque + notaSorteada) + 1;
            *(_qtdeNotasDisp + notaSorteada) = *(_qtdeNotasDisp + notaSorteada) - 1;
        }
    }
}

- (void) reabastecerCaixa : (NSInteger*) notas
{
    
}
- (void) mostrarHistorico
{
}

@end
