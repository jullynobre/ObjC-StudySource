#import <Foundation/Foundation.h>
#import "Cliente.h"

@implementation Cliente


- (id) init : (NSString*) nome SaldoInicial : (NSInteger) saldo
{
    if(self = [super init])
    {
        _nome = nome;
        _saldo = saldo;
    }
    return self;
}

- (void) realizarDeposito : (NSInteger) valor
{
    _saldo += valor;
}

@end
