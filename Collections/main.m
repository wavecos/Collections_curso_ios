//
//  main.m
//  Collections
//
//  Created by Tekhne on 9/28/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        // Arrays
        int scoresAltos[5];
        
        scoresAltos[0] = 1021;
        scoresAltos[1] = 121;
        scoresAltos[2] = 546;
        scoresAltos[3] = 3445;
        scoresAltos[4] = 354;
        
        NSString *primerosLugares[] = {@"juan", @"pedro", @"carla", @"romina"};
        
        NSLog(@"El ultimo elemento es : %i", scoresAltos[4]);
        
        NSLog(@"El primer lugar es para : %@", primerosLugares[0]);
        
        // NSArray
        // 1era Forma inicializar un NSArray
        NSArray *departamentos = [[NSArray alloc] initWithObjects:@"La Paz", @"Cochabamba", @"Sucre", @"Potosi", nil];
        
        NSLog(@"Departamento: %@", [departamentos objectAtIndex:2]);
        
        // 2da Forma inicializar un NSArray
        
        NSArray *colores = [NSArray arrayWithObjects:@"azul", @"verde", [NSNumber numberWithInt:256], [NSDate date], nil];
        NSLog(@"Elemento del array es: %@", [colores objectAtIndex:3]);
        
        // 3ra Forma inicializar un NSArray
        NSArray *equiposFutbol = @[@"bayern", @"real madrid", @"manchester united", [NSDate date]];
        NSLog(@"equipo espagnol : %@", [equiposFutbol objectAtIndex:1]);
        
        // NSMutableArray
        
        NSMutableArray *empleados = [NSMutableArray arrayWithObjects:@"juan perez", @"lola palacios", @"godines juanelo", nil];
        
        NSLog(@"el ultimo elemento es: %@", [empleados objectAtIndex:[empleados count] - 1]);
  
        [empleados addObject:@"renan yaro"];
        
        NSLog(@"el ultimo elemento es: %@", [empleados objectAtIndex:[empleados count] - 1]);
        
        [empleados removeObjectAtIndex:1];
        NSLog(@"el segundo elemento es: %@", [empleados objectAtIndex:1]);
        
        // Diccionarios
        
        NSMutableDictionary *traductor = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"house", @"casa", @"tree", @"arbol",
            @"exit", @"exito",
            @"paper", @"papel", nil];
        
        NSLog(@"la traduccion de la palabra 'exito' es: %@ en ingles",[traductor objectForKey:@"exito"]);
        
        NSLog(@"numero de elementos %lu", [traductor count]);
        
        [traductor setObject:@"keyboard" forKey:@"teclado"];
        [traductor setObject:@"mouse" forKey:@"raton"];
        
        NSLog(@"numero de elementos %lu despues de insertar 2 elementos.", [traductor count]);
        
        [traductor removeObjectForKey:@"exito"];
        
        NSLog(@"numero de elementos %lu despues de eliminar 1 elemento.", [traductor count]);
        
        for ( NSString *llaveEspanol in traductor) {
            NSLog(@"La palabra en espanol: '%@' tiene su significado en ingles: '%@'", llaveEspanol, [traductor objectForKey:llaveEspanol]);
        }
        
        
        
    }
    return 0;
}








