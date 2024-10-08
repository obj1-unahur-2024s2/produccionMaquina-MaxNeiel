object maquina {
  const produccion = [43,18,49,62,33,39]
  method produccion() = produccion
  method producir(cantidad) = produccion.add(cantidad)

  method algunDiaSeProdujo(cantidad) = produccion.contains(cantidad)
  method maximoValorDeProduccion() = produccion.max()
  method totalProducido() = produccion.sum()
  method ultimoValorDeProduccion() = produccion.last()
  method borrarTodos() = produccion.clear()
  method obtenerElemento(posicion) = produccion.get(posicion)
  method produccionesSuperioresA(valor){
    return produccion.filter( { elemento => elemento > valor} )
  }

  method cantidadProduccionesMayorALaPrimera() = produccion.count({elem => elem > produccion.first()})

  method produccionEsAcotada(n1,n2) = produccion.all({e => e.between(n1, n2)})
  
  method produccionesPares() = produccion.filter({p=>p.even()})

  method produccionesSumando(cant) = produccion.map({p=> p+cant})
  
  }
  
  /////////////////// Nueva maquina en la panaderia

  object horno{
    const produccion = []
    method producir(que) = produccion.add(que)

    method algunDiaSeProdujo(cantidad) = produccion.any({e=>e.cantidad() == cantidad})
    method totalProducido() = produccion.sum({p=>p.cantidad()})
    method elPrimeroParaCeliaco() = produccion.find({p=>p.esAptoCeliaco()})
    method seProdujoAlgoParaCeliacos() = produccion.any({p=>p.esAptoCeliaco()})
    //method cantidadDePanTotalProducida() = produccion.filter({p=>p == pan}).sum({p=>p.cantidad()})
    method produccionesQueSonPan() = produccion.filter({p=>p == pan})
    method cantidadDePanTotalProducida() = self.produccionesQueSonPan().sum({p=>p.cantidad()})
    method hacerAptoCeliacoATodos() = produccion.forEach({p=>p.hacerAptoCeliaco()})
    method todaLaProduccionEsAptaCeliacos() = produccion.all({p=>p.esAptoCeliaco()})
  }

  object bizcocho{
    var esAptoCeliaco = true
    method cantidad() = 100
    method esAptoCeliaco() = esAptoCeliaco
    method hacerAptoCeliaco() {
      esAptoCeliaco = true
    }
  }
  
  object factura{
    var esAptoCeliaco = false
    method cantidad() = 12
    method esAptoCeliaco() = esAptoCeliaco
    method hacerAptoCeliaco() {
      esAptoCeliaco = true
    }
  }

  object pan{
    var esAptoCeliaco = false
    const cantidad = 5
    method cantidad() = cantidad
    method esAptoCeliaco() = esAptoCeliaco
    method hacerAptoCeliaco() {
      esAptoCeliaco = true
    }
  }

 object sanguchito{
  var esAptoCeliaco = false
  const cantidad = 10
  method cantidad() = cantidad
  method esAptoCeliaco() = esAptoCeliaco
  method hacerAptoCeliaco() {
      esAptoCeliaco = true
  }
 } 