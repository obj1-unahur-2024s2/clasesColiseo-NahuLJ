object casco{

  method puntosDeArmadura() = 10

}

class Escudo{
  const portador

  method puntosDeArmadura() = 5 + portador.destreza() * 0.1 

}

