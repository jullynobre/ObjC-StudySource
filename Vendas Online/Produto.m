//
//  Produto.m
//  VendasOnline
//
//  Created by Ada 2018 on 23/02/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

#import "Produto.h"

@implementation Produto


- (id) init : (NSString*) nome preco: (float) valor
{
    if(self = [super init])
    {
        _nome = nome;
        _valor = valor;
        _quantidade = 0;
    }
    return self;
}

@end
