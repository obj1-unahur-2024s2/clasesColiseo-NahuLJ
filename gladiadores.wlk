import coliseo.*
class Mirmillon {
  var property vida = 100
  var arma 
  const fuerza
  const armadura = []

  method destreza() = 15

  method cambiarArmaduraA(nuevaArmadura){
    armadura.clear()
    armadura.add(nuevaArmadura)
  }

  method atacarA(unGladiador){
    unGladiador.recibirDanio(self.poderDeAtaque() - unGladiador.defensa())
    unGladiador.atacarA(self)
  }

  method recibirDanio(unaCantidad){
    vida = 0.max(vida - unaCantidad)
  }

  method poderDeAtaque() = arma.valorAtaque() + fuerza

  method defensa() = self.defensaDeArmadura() + self.destreza()

  method defensaDeArmadura() = armadura.sum({armadura => armadura.puntosDeArmadura(self)})

  method crearGrupoJuntoA(unGladiador){
    const mirmillolandia = new Grupo (nombre = "mirmillolandia") 
    mirmillolandia.gladiadores().add(self)
  }
}

class Dimachaerus {
  var property vida = 100
  const armas = []
  var destreza

  method fuerza() = 10

  method atacarA(unGladiador){
    unGladiador.recibirDanio(self.poderDeAtaque() - unGladiador.defensa())
    unGladiador.atacarA(self)
    destreza += 1
  }

  method recibirDanio(unaCantidad){
    vida = 0.max(vida - unaCantidad)
  }

  method poderDeAtaque() = self.poderDeAtaqueDeLasArmas() + self.fuerza()

  method defensa() = destreza / 2
  
  method poderDeAtaqueDeLasArmas() = armas.sum({arma => arma.valorAtaque()})

  method crearGrupoJuntoA(unGladiador){
    const dimachaerulandia = new Grupo (nombre = "D-" + (unGladiador.poderDeAtaque() + self.poderDeAtaque())) 
    dimachaerulandia.gladiadores().add(self)
    dimachaerulandia.gladiadores().add(unGladiador)
  }

}