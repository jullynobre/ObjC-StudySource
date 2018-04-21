//
//  Sistema.m
//  VendasOnline
//
//  Created by Ada 2018 on 23/02/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

#import "Sistema.h"
#import "Produto.h"
#import "Compra.h"

@implementation Sistema

- (id) init{
    if(self = [super init])
    {
        _historico = [NSMutableArray new];
        _carrinho = [NSMutableArray new];
        
    }
    return self;
}
- (void)mostrarHistorico:(NSString*)data{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
    NSDate *dataFiltro = [dateFormatter dateFromString:data];
    NSLog(@"No dia %@ as seguintes compras foram efetuadas:",data);
    for (Compra* compra in _historico)
    {
        if([[NSCalendar currentCalendar] isDate:dataFiltro inSameDayAsDate:compra.data]){
            NSLog(@"%@ \n" ,[self formatterStringMoeda:compra.valor]);
        }
    }
    
}
- (void)adicionarProdutoAoCarrinho:(Produto*) produto{
    if([_carrinho containsObject:produto]){
        [_carrinho removeObject:produto];
    }
    produto.quantidade++;
    [_carrinho addObject:produto];
    
    
    NSString *numeroReal = [self formatterStringMoeda:[self valorTotalCarrinho]];
    NSLog(@"Valor Total Carrinho - %@", numeroReal);
}

- (void)removerProdutoDoCarrinho:(Produto*) produto{
    [_carrinho removeObject:produto];
}

- (void)esvaziarCarrinho{
    [_carrinho removeAllObjects];
}

- (void)finalizarCompra{
    Compra *compra = [Compra new];
    compra.valor = [self valorTotalCarrinho];
    compra.data = [[NSDate alloc] init];
    [_historico addObject:compra];
    
    [self esvaziarCarrinho];
}

- (float)valorTotalCarrinho{
    float valor = 0.0;
    for (Produto *produto in _carrinho){
        valor += produto.valor * produto.quantidade;
    }
    return valor;
}

-(NSString*)formatterStringMoeda:(float)valor{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    numberFormatter.locale = [NSLocale currentLocale];
    numberFormatter.numberStyle = NSNumberFormatterCurrencyStyle;
    NSString *numeroReal = [numberFormatter stringFromNumber:[[NSNumber alloc] initWithFloat:valor]];
    return numeroReal;
}
@end
