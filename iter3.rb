def filter(val)

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
total={}
    ventas.each do |k,v|
        if v>val
            total[k]=v
        end
    end
    print total
end
val=0
filter(21000)