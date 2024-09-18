object maquina {
  const produccion = [5, 70, 1, 30]

  method algunDiaSeProdujo(cantidad) = produccion.contains(cantidad)
  method maximoValorDeProduccion() = produccion.max()
  method totalProducido() = produccion.sum()
  method ultimoValorDeProduccion() = produccion.last()
  method borrarTodos() = produccion.clear()
  method obtenerElemento(posicion) = produccion.get(posicion)
  method produccion() = produccion

  }