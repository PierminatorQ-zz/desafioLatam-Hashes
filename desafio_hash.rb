
def newmet

ventas = {
        Octubre: 65000,
        Noviembre: 68000,
        Diciembre: 72000
        }

newventas=[]

    ventas.each do |k,v|
        if v<70000
            newventas.push(v)
        end
    end
puts newventas
end


newmet()