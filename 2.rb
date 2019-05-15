module Formula
  def perimetro
    puts "El perimetro es #{(@l1 + @l2) * 2}"
  end

  def area
    puts "El área es #{@l1 * @l2}"
  end
end

class Rectangulo
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
    @l1 = @largo
    @l2 = @ancho
  end

  def lados
    puts "El largo del rectángulo es #{@largo} y el ancho es #{@ancho}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
    @l1 = @lado
    @l2 = @lado
  end

  def lados
    puts "Los lados del cuadrado miden #{@lado}"
  end
end



a = Rectangulo.new(3, 5)
a.lados
a.area
a.perimetro

b = Cuadrado.new(8)
b.lados
b.area
b.perimetro
