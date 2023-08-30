import clientes.*
import oficina.*

object roxana{
	method precioViaje(cliente,km){
		return cliente.precioPorKm() * km
	}
}

object gabriela{
	method precioViaje(cliente,km){
		return cliente.precioPorKm()* km * 1.2
	}
}

object mariela{
   	method precioViaje(cliente,km){
   	 	return 50.max(cliente.precioPorKm() * km)
   	 }
}

object juana{
	method precioViaje(cliente,km){
		 if (km <= 8 )
		 	return 100 
		 		else
		 			return 200 
		 }
}

object lucia{
	var reemplazaA
	
	method reemplazaA(remisera){
	if (self == remisera){
		self.error("no se puede reemplazar a si mismo")
	}
	 reemplazaA = remisera
	}
	
	method reemplazaA() = reemplazaA
	
	method precioViaje(cliente,km){
		 return reemplazaA.precioViaje(cliente,km)
	}
}
