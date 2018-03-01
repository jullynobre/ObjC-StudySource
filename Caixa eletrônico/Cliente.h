#import <Foundation/Foundation.h>
@interface Cliente : NSObject

@property NSString* nome;
@property NSInteger saldo;

- (id) init : (NSString*) nome SaldoInicial : (NSInteger) saldo;
- (void) realizarDeposito : (NSInteger) valor;

@end
