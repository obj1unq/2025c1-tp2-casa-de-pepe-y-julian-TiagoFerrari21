import cosas.* 
object casaDePepeYJulian {
    var compras = []
    var cuentaDePago = cuentaCorriente

    method cuentaDePago() {
        return cuentaDePago
    }

    method compras() {
      return compras
    }

    // method verificarCompra(cosa) {
    //     if (cuentaCorrienteCasa.saldo() < cosa.precio()){
    //         self.error("no te alcanza flaquito")
    //     }
    // }

    method comprarCosa(cosa) {
       //self.verificarCompra(cosa)
        cuentaDePago.retirar(cosa.precio())
        compras.add(cosa)
    }

    method cantidadDeCosasCompradas() {
        return compras.size()
    }

    method tieneAlgun(categoria) {
        return compras.map({compra => compra.categoria()}).contains(categoria)
    }

    method vieneDeComprar(categoria) {
        return if (not compras.isEmpty()){
                categoria == compras.last().categoria()
        }
        else false

    }

    method esDerrochona() {
        return 9000 <= compras.map({compra => compra.precio()}).sum()
    }

    method compraMasCara() {
        return compras.max({compra => compra.precio()})
    }

    method comprados(categoria) {
        return compras.filter( {compra => compra.categoria() == categoria})
    }

    method tieneCompraCara() {
        return not (compras.map({compra => compra.categoria()}).contains(mueble) || compras.map({compra => compra.categoria()}).contains(electrodomestico) )
    }

    method esMalaEpoca() {
        return self.tieneCompraCara()
    }

    method queFaltaComprar(lista) {
        return lista.copyWithout(compras)
      
    }

    method faltaComida() {
       return compras.count({compra => compra.categoria() == comida})
    }

    method categoriasCompradas() {
       return compras.map({compra => compra.categoria()}).asSet()
    }
}
