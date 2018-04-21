//
//  Sistema.h
//  VendasOnline
//
//  Created by Ada 2018 on 23/02/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Produto.h"

@interface Sistema : NSObject

@property NSMutableArray* historico;
@property NSMutableArray* carrinho;


- (id) init;
- (void)mostrarHistorico:(NSString*)data;
- (void)adicionarProdutoAoCarrinho:(Produto*) produto;
- (void)removerProdutoDoCarrinho:(Produto*) produto;
- (void)esvaziarCarrinho;
- (void)finalizarCompra;
- (float)valorTotalCarrinho;



@end
