#LPP - Practica 4
#Jhoanmary Perez Fariña
#p4_radio.rb



class Circunferencia
	attr_reader :perimetro
	def initialize(perimetro)
		raise ArgumentError.new("El perimetro debe ser un numero positivo.") unless (perimetro.is_a? Numeric) && (perimetro > 0)
		@perimetro=perimetro
		
	end
	def cal_radio
		radio = (@perimetro/3.14)/2 
	end
	def to_s
		"El radio de la circunferencia es #{radio}"
	end
end

require"test/unit"

class CircunferenciaTest < Test::Unit::TestCase

	def test_perimetro
		assert_in_delta(3.184713375,Circunferencia.new(20).cal_radio, 0.0001) #Passes if expected_float and actual_float are equal within delta tolerance.
	end
	
	def test_crear_circunferencia
		assert_equal(20,Circunferencia.new(20).perimetro) #Passes if expected == +actual.
		assert_nothing_raised do #Passes if block does not raise an exception.
			p=Circunferencia.new(20)
			puts p.cal_radio
	    end
	assert_raise(ArgumentError){Circunferencia.new(-1)} #No passes it's a negative number
	assert_raise(ArgumentError){Circunferencia.new( 'a')} #No passes it's a string
	end
end
