//: Playground - noun: a place where people can play

import UIKit



enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    case velocidadInicial
   
  
    init(velocidadInicial : Velocidades){
        self = .velocidadInicial
    }

}



class Auto{
    
    var velocidad : Velocidades
  
    init(velocidad : Velocidades){
                self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        var velocidadEnCadena = ""
        var actual : Int = 0
    
        
        
       switch(velocidad){
        case .Apagado:
            actual = velocidad.rawValue
            velocidad = .VelocidadBaja
            velocidadEnCadena = "Apagado"
        break
        case .VelocidadBaja:
            actual = velocidad.rawValue
            velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad Baja"
        break
        case .VelocidadMedia:
            actual = velocidad.rawValue
            velocidad = .VelocidadAlta
            velocidadEnCadena = "Velocidad Media"
        break
        case .VelocidadAlta:
            actual = velocidad.rawValue
            velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad Alta"
        break
        default: break
        
        }
        
      return (actual, velocidadEnCadena)
        
    }
    

}

let auto = Auto(velocidad: Velocidades.velocidadInicial)

for i in 1...20 {
    let (valor, cadena) = auto.cambioDeVelocidad()
    print("\(valor), \(cadena)")
}




