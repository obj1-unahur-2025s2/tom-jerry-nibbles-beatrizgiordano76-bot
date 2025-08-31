object tom {
  var energia = 50
  var ultimoRatonComido = null
  var metrosRecorridos = 0 

  // Tom solo puede intentar cazar si la distancia es alcanzable
  method puedeCazarADistancia(unaDistancia) {
    return unaDistancia / 2 <= energia 
  } 

  // Intenta cazar a un ratón si puede llegar
  method cazarA_SiPuede(unRaton, cantidadDeMetros) {
    if(self.puedeCazarADistancia(cantidadDeMetros)) {
      self.cazarA_Distancia_(unRaton, cantidadDeMetros)
    }
  }

  // Método faltante: Tom corre hasta el ratón y lo come
  method cazarA_Distancia_(unRaton, cantidadDeMetros) {
    self.correr(cantidadDeMetros)
    self.comer(unRaton)
  }

  method velMaxima() {
    return 5 + energia / 10
  }

  method comer(unRaton) {
    energia = energia + 12 + unRaton.peso()
    ultimoRatonComido = unRaton
  }

  method correr(cantidadDeMetros) {
    energia = energia - cantidadDeMetros / 2
    metrosRecorridos = metrosRecorridos + cantidadDeMetros 
  }

  method ultimoRatonComido() {
    return ultimoRatonComido
  } 

  method distanciaTotalRecorrida() {
    return metrosRecorridos
  } 
}

object jerry {
  var edad = 2
  method peso() = edad * 20

  method cumplirAnio() {
    edad += 1
  }
}

object nibbles {
  method peso() = 35 
}

// Inventamos otro ratón
object speedy {
  var velocidad = 15
  method peso() = 25

  method entrenar() {
    velocidad += 5
  }
    method getVelocidad() = velocidad   // 👈 getter para acceder
}
