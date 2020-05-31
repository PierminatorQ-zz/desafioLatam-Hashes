
def comprueba(val1,val2,val3)

ventas = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 21000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
    }

comp=[val1,val2,val3]

    comp.each do |x|

        if a=ventas.rassoc(x)
            print a[0]
        else
            print " no encontrado "
        end
    end

    

end
val1=0
val2=0
val3=0
comprueba(15000,13000,5687)
