//
//  Produto.h
//  VendasOnline
//
//  Created by Ada 2018 on 23/02/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Produto : NSObject

@property NSString* nome;
@property NSDecimalNumber* valor;
@property NSInteger quantidade;

- (id) init : (NSString*)nome preco: (float) valor;

@end
