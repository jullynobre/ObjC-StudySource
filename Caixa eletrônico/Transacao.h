#import <Foundation/Foundation.h>
#import "Cliente.h"

@interface Transacao : NSObject

@property Cliente* cliente;
@property NSInteger valor;

- (id) init : (Cliente*) cliente valor : (NSInteger) valor;

@end
