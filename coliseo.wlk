object coliseo{
  const property grupos = [] 

  method organizarCombatesEntre(unGrupo,otroGrupo){
    
  }
}

class Grupo{
  const property nombre 
  var property cantidadPeleas = 0 
  const property gladiadores = []
  

  method agregarGladiador(unGladiador){
    gladiadores.add(unGladiador)
  }

  method eliminarGladiador(unGladiador){
    gladiadores.remove(unGladiador)
  }

  method campeon() = gladiadores.max({gladiador => gladiador.vida()})

  method combatirContra(unGrupo){
    self.campeon().atacarA(unGrupo.campeon())
  }
}