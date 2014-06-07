module PhysicalAssessmentsHelper
	def percentual_gordura(soma = nil, aluno_idade = nil, aluno_sexo = nil)
		if aluno_sexo == 'Masculino'
			densidade_corporal = (1.10938 - (0.0008267 * (soma)) + (0.0000016 * (soma ** 2))) - (0.0002574 * aluno_idade);
			percentual_gordura = ((4.95 / densidade_corporal) - 4.5) * 100
		else
			densidade_corporal = (1.0994921 - (0.0009929 * (soma)) + (0.0000023 * (soma ** 2))) - (0.0001392 * aluno_idade);
			percentual_gordura = ((5.01 / densidade_corporal) - 4.57) * 100
		end
	end

	def peso_gordo(peso = nil, percentual_gordura = nil)
		peso_gordo = peso * (percentual_gordura / 100)
	end

	def peso_magro(peso = nil, peso_gordo = nil)
		peso_magro = peso - peso_gordo
	end

	def percentual_gordura_ideal(aluno_idade = nil, aluno_sexo = nil)
		if aluno_sexo == 'Masculino'
			if aluno_idade < 25
				percentual_gordura_ideal = 16
			elsif aluno_idade < 35
				percentual_gordura_ideal = 20
			elsif aluno_idade < 45
				percentual_gordura_ideal = 23
			elsif aluno_idade < 55
				percentual_gordura_ideal = 25
			else 
				percentual_gordura_ideal = 25
			end
		else
			if aluno_idade < 25
				percentual_gordura_ideal = 25
			elsif aluno_idade < 35
				percentual_gordura_ideal = 25
			elsif aluno_idade < 45
				percentual_gordura_ideal = 29
			elsif aluno_idade < 55
				percentual_gordura_ideal = 31
			else 
				percentual_gordura_ideal = 32
			end
		end
	end

	def peso_ideal(peso = nil, percentual_gordura_ideal = nil, peso_magro = nil)
		peso_ideal = (peso * percentual_gordura_ideal / 100) + peso_magro
	end
end
