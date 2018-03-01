#import <Foundation/Foundation.h>
#import "Transacao.h"

@implementation Transacao

- (id) init : (Cliente*) cliente valor : (NSInteger) valor
{
    if(self = [super init])
    {
        _cliente = cliente;
        _valor = valor;
    }
    return self;
}

@end
