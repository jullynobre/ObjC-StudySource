#import <Foundation/Foundation.h>
#import "Caixa.h"
#import "Cliente.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Cliente *serumano = [[Cliente alloc] init:@"Ser Humano" SaldoInicial:300];
        
        Caixa *BB = [[Caixa alloc] init];
        [BB sacar : 200 Cliente : serumano];
    }
    return 0;
}
