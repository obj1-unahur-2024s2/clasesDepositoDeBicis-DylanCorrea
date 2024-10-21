import bicis.*

class Deposito {
  const property bicis = []

  method bicisRapidas() =  bicis.filter({b => b.velocidadCrucero() > 25})
  method marca() = bicis.map({b => b.marca()}).asSet()
  method esNocturno() = bicis.all({b => b.tieneLuz()})
  method bicicletaParaLlevar(unaCarga) = bicis.any({b => b.carga() > unaCarga})
  method marcaDeLaBiciMasRapida() = self.biciMasRapida().marca() 
  method biciMasRapida() = bicis.max({b => b.velocidadCrucero()}) // metodo auxiliar    
  method cargaTotal() = bicis.sum({b => self.bicisLargas().carga()}) 
  method bicisLargas() = bicis.filter({b => b.largo() > 170}) // metodo auxiliar
  method cantidadDeBicisSinAccesorio() = bicis.count({b => b.accesorios().isEmpty()})
  //method hayCompañeras() =       
}
