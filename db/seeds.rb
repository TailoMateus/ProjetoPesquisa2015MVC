    estado = Estado.create(:UF => 'AC', :nome => "Acre")
    estado.save
    estado = Estado.create(:UF => 'AL', :nome => "Alagoas")
    estado.save
    estado = Estado.create(:UF => 'AM', :nome => "Amazonas")
    estado.save
    estado = Estado.create(:UF => 'AP', :nome => "Amapá")
    estado.save
    estado = Estado.create(:UF => 'BA', :nome => "Bahia")
    estado.save
    estado = Estado.create(:UF => 'CE', :nome => "Ceará")
    estado.save
    estado = Estado.create(:UF => 'DF', :nome => "Distrito Federal")
    estado.save
    estado = Estado.create(:UF => 'ES', :nome => "Espírito Santo")
    estado.save
    estado = Estado.create(:UF => 'GO', :nome => "Goiás")
    estado.save
    estado = Estado.create(:UF => 'MA', :nome => "Maranhão")
    estado.save
    estado = Estado.create(:UF => 'MG', :nome => "Minas Gerais")
    estado.save
    estado = Estado.create(:UF => 'MS', :nome => "Mato Grosso do Sul")
    estado.save
    estado = Estado.create(:UF => 'MT', :nome => "Mato Grosso")
    estado.save
    estado = Estado.create(:UF => 'PA', :nome => "Pará")
    estado.save
    estado = Estado.create(:UF => 'PB', :nome => "Paraíba")
    estado.save
    estado = Estado.create(:UF => 'PE', :nome => "Pernambuco")
    estado.save
    estado = Estado.create(:UF => 'PI', :nome => "Piauí")
    estado.save
    estado = Estado.create(:UF => 'PR', :nome => "Paraná")
    estado.save
    estado = Estado.create(:UF => 'RJ', :nome => "Rio de Janeiro")
    estado.save
    estado = Estado.create(:UF => 'RN', :nome => "Rio Grande do Norte")
    estado.save
    estado = Estado.create(:UF => 'RO', :nome => "Rondônia")
    estado.save
    estado = Estado.create(:UF => 'RR', :nome => "Roraima")
    estado.save
    estado = Estado.create(:UF => 'RS', :nome => "Rio Grande do Sul")
    estado.save
    estado = Estado.create(:UF => 'SC', :nome => "Santa Catarina")
    estado.save
    estado = Estado.create(:UF => 'SE', :nome => "Sergipe")
    estado.save
    estado = Estado.create(:UF => 'SP', :nome => "São Paulo")
    estado.save
    estado = Estado.create(:UF => 'TO', :nome => "Tocantins")
    estado.save

    status = Situacao.create(:nome => "Primeiro Contato")
    status.save
    status = Situacao.create(:nome => "Aguardando envio de material")
    status.save
    status = Situacao.create(:nome => "Diagnóstico")
    status.save
    status = Situacao.create(:nome => "Aguardando visita")
    status.save
    status = Situacao.create(:nome => "Aguardando agenda")
    status.save