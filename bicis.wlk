class Bici {
  const property rodado
  const property largo
  const property marca
  const property accesorios = []

  method altura() = rodado * 2.5 + 15
  method velocidadCrucero() = if(largo>120) rodado + 6 else rodado + 2
  method carga() = accesorios.sum({a => a.carga()})
  method peso() = (rodado / 2) + accesorios.sum({a => a.peso()})
  method tieneLuz() = accesorios.any({a => a.esLuminoso()})
  method cantidadDeAccesoriosLivianos() = accesorios.count({a => a.peso() < 1})          
}

class Farolito {
  
  method peso() = 0.5
  method carga() = 0
  method esLuminoso() = true   
}

class Canasto {
  var property volumen

  method peso() = volumen / 10
  method carga() = volumen * 2
  method esLuminoso() = false     
}

class MorralDeBici {
  var property largo
  var property tieneOjoDeGato

  method peso() = 1.2
  method carga() = largo / 3
  method esLuminoso() = tieneOjoDeGato       
}