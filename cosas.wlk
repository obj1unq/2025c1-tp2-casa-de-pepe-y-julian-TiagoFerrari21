object electrodomestico{
}

object mueble {
}

object comida {
}

object heladera {
	const precio = 20000
	const categoria = electrodomestico

	method precio() { return precio }

	method categoria() { return categoria }
}

object cama {
	const precio = 8000
	const categoria = mueble

	method precio() { return precio }
	method categoria() { return categoria }
}

object tiraDeAsado {
	const precio = 350
	const categoria = comida

	method precio() { return precio }
	
	method categoria() { return categoria }
}

object paqueteDeFideos {
	const precio = 50
	const categoria = comida

	method precio() { return precio }
	
	method categoria() { return categoria }
}

object plancha {
	const precio = 1200
	const categoria = electrodomestico

	method precio() { return precio }
	
	method categoria() { return categoria }
}

object cuentaCorriente {
	var saldo = 1000

	method saldo() {
		return saldo
	}

	method depositar(dinero) {
		saldo = saldo + dinero
	}

	method puedeRetirar(dinero) {
		return saldo > dinero
	}

	method verificarRetiro(dinero) {
		if (not self.puedeRetirar(dinero)){
			self.error("No tiene suficiente saldo en la cuenta, anda a laburar!!!")
		}
	}

	method retirar(dinero) {
		self.verificarRetiro(dinero)
		saldo = saldo - dinero
	}
}

object cuentaConGastos {
	var saldo = 500
	const costoDeOperacion = 20

	method saldo() {
		return saldo
	}

	method depositar(dinero) {
		self.verificarDeposito(dinero)
		saldo = saldo + dinero - costoDeOperacion
	}

	method puedeDepositar(dinero) {
		return 1000 >= dinero
	}

	method verificarDeposito(dinero) {
		if (not self.puedeDepositar(dinero)){
			self.error("No se puede depositar mas de $1000 en una sola transaccion")
		}
	}

	method retirar(dinero) {
		saldo = saldo - dinero
	}
}