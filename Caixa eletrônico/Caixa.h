#import <Foundation/Foundation.h>
#import "Cliente.h"

@interface Caixa : NSObject

@property NSMutableArray* historico;
@property NSInteger* qtdeNotasDisp;
@property NSInteger* opcaoSaque1;
@property NSInteger* opcaoSaque2;

- (id) init;

- (void) gerarOpcoesSaque : (int) valor ponteiro : (NSInteger *) opcaoSaque;
- (void) mostarOpcoesSaque :(int) numero ponteiro : (NSInteger *) opcaoSaque;
- (int) escolherOpcaoSaque : (int) valor;
- (int) sacar : (int) valor Cliente : (Cliente*) cliente;
- (void) reabastecerCaixa : (NSInteger*) notas;
- (void) mostrarHistorico;

@end
