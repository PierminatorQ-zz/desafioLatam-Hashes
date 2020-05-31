
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
    num=[]
    num2=[]
    #convertir a array
    v=ventas.to_a
    #extraer los values
        12.times do |x|
            num << v[x][1]
        end
    #dividir e trimestres y sumar
    num.each_slice(3) { |v| num2 <<v.sum}
    
    #crear array final
    final={}
#insertar los trimestres en array final
    4.times do |x|
        final.store("Q#{x+1}",num2[x])
    end
    
    print final