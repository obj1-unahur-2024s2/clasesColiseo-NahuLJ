object casco{

  method puntosDeArmadura(unPortador) = 10

}

object escudo{


  method puntosDeArmadura(unPortador) = 5 + unPortador.destreza() * 0.1 

}

