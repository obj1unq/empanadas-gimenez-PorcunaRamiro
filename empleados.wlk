//Escribir aqui los objetos
object empanada{
    var precio = 15

    method precio() {
      return precio
    }
}
object gimenez{
    var fondo = 300000
    var deuda = 0

    method fondo(){
        return fondo
    }
    method pagarSueldo(empleado) {
    
      fondo -= empleado.sueldo()
      empleado.cobrar()}
    
}

object baigorria{
    var fondo = 0
    var cantEmpVen = 0
    var totalCobrado = 0
    method vender(x) {
      cantEmpVen += x
    }

    method sueldo(){
        return (cantEmpVen * empanada.precio())
    }


    method cobrar() {
        fondo += self.sueldo()
        totalCobrado += self.sueldo()
        cantEmpVen = 0
    }

    method totalCobrado() {
      return totalCobrado
    }
}

object galvan{
    var fondo = 0 
    var sueldo = 15000
    var deuda = 0

    method dinero(){
        return fondo
    }
    method gastar (x){
        if (self.dinero() >= x){
            fondo -= x
        } else{
            const diferencia = x - fondo
            fondo = 0
            deuda += diferencia
        }

    }
    method cambiarSueldo(x) {
      sueldo = x
    }


    method deuda(){
        return deuda
    }
    method PagarDeudaCon(x) {
        
        if (x >= self.deuda()){
            const diferencia = x - self.deuda()
            deuda = 0
            fondo = diferencia
        }else{
            deuda = self.deuda() - x
        }
      
    }
    method sueldo(){
        return sueldo
    }
    method cobrar(){
        if (deuda == 0){ 
        fondo += sueldo}
        else{
            self.PagarDeudaCon(sueldo)
        }
    } 
}

