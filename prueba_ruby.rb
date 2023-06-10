class Person
    attr_accessor :firs, :last, :age
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def birthday
        @age += 1
    end

    def talk
    end

    def introduce
    end
end

class Student<Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher<Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent<Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end


=begin
Identificar las posibles subclases que aparecen en el código a refactorizar. Cada una
de ella contendrá los métodos correspondientes, talk e introduce.
Hint: Teacher sería una clase.
2. A partir de la refactorización del código se debe generar herencia de ancestros
aplicando la sintaxis de Ruby, esto para la subclases.
(3 Puntos)
3. El método introduce al imprimir el mensaje muestra el nombre y apellido haciendo
uso de interpolación de variables de instancia.
(1 Puntos)
4. Al generar las instancias de cada objeto, se muestra un mensaje en función del
método que sea invocado.
(3 Puntos)
=end

estudiante1=Student.new("Harry", "Potter", 15)
estudiante1.introduce
estudiante1.talk


profesor=Teacher.new("Severus", "Snape", 48)
profesor.introduce
profesor.talk


padre=Parent.new("Lily", "Potter", 35)
padre.introduce
padre.talk
