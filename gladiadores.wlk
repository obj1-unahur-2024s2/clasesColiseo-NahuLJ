class Mirmillon {
  var vida = 100
  var arma 
  var fuerza
  const armadura = []

  method destreza() = 15

  method cambiarArmaduraA(nuevaArmadura){
    armadura.clear()
    armadura.add(nuevaArmadura)
  }

  method cambiarArmaA(nuevaArma){
    arma = nuevaArma
  }

}

class Dimachaerus {
  var vida = 100
  const armas = []
  const property destreza

  method fuerza() = 10

}