class Alumno
  attr_reader :nombre, :notas
  def initialize(nombre, *notas)
    @nombre = nombre
    @notas = notas.map(&:to_i)
  end

  def object_collection
    puts "Alumno/a #{self.nombre} tiene las siguientes notas: #{self.notas.join(', ')} "
  end

  def self.read_file(filename = 'notas.txt')
    alumnos = []
    data = []
    File.open(filename, 'r') { |file| data = file.readlines }
    data.each do |line|
      alumnos.push(Alumno.new(*line.split(', ')).object_collection)
    end
  end
end




Alumno.read_file
