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

  object bizcocho{
    method cantidad() = 100
  }
  
  object factura{
    method cantidad() = 12
  }

  object pan{
    var cantidad = 5
    method cantidad() = cantidad

  }

 object sanguchito{
  var cantidad = 1
  method cantidad() = cantidad
 } 