//
//  main.m
//  VendasOnline
//
//  Created by Ada 2018 on 23/02/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sistema.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        Sistema* sistema = [Sistema new];
        Produto* produto1 = [[Produto alloc] init:@"Café Santa Clara Tradicional" preco:6];
        Produto* produto2 = [[Produto alloc] init:@"Café Pilão Extra Forte" preco:7.50];
        Produto* produto3 = [[Produto alloc] init:@"Café Kimimo" preco:6.50];
        Produto* produto4 = [[Produto alloc] init:@"Café Santa Clara arábico Cerrado Mineiro" preco:10.50];
        Produto* produto5 = [[Produto alloc] init:@"Café Nordestino" preco:4.00];
        
        [sistema adicionarProdutoAoCarrinho:produto1];
        [sistema adicionarProdutoAoCarrinho:produto2];
        [sistema adicionarProdutoAoCarrinho:produto3];
        [sistema finalizarCompra];
        [sistema adicionarProdutoAoCarrinho:produto4];
        [sistema adicionarProdutoAoCarrinho:produto5];
        
        [sistema adicionarProdutoAoCarrinho:produto4];
    
        [sistema finalizarCompra];
        
        [sistema mostrarHistorico:@"23/02/2018"];
        
        
    }
    return 0;
}
