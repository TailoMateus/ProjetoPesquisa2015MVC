# -*- coding: UTF-8 -*-
class CreateEstadoECidades < ActiveRecord::Migration
  def self.up
    e = Estado.create(:UF => 'AC', :nome => "Acre")
    e.save

    e = Estado.create(:UF => 'AL', :nome => "Alagoas")
    e.save

    e = Estado.create(:UF => 'AM', :nome => "Amazonas")
    e.save

    e = Estado.create(:UF => 'AP', :nome => "Amapá")
    e.save

    e = Estado.create(:UF => 'BA', :nome => "Bahia")
    e.save

    e = Estado.create(:UF => 'CE', :nome => "Ceará")
    e.save

    e = Estado.create(:UF => 'DF', :nome => "Distrito Federal")
    e.save

    e = Estado.create(:UF => 'ES', :nome => "Espírito Santo")
    e.save

    e = Estado.create(:UF => 'GO', :nome => "Goiás")
    e.save

    e = Estado.create(:UF => 'MA', :nome => "Maranhão")
    e.save

    e = Estado.create(:UF => 'MG', :nome => "Minas Gerais")
    e.save

    e = Estado.create(:UF => 'MS', :nome => "Mato Grosso do Sul")
    e.save

    e = Estado.create(:UF => 'MT', :nome => "Mato Grosso")
    e.save

    e = Estado.create(:UF => 'PA', :nome => "Pará")
    e.save

    e = Estado.create(:UF => 'PB', :nome => "Paraíba")
    e.save

    e = Estado.create(:UF => 'PE', :nome => "Pernambuco")
    e.save

    e = Estado.create(:UF => 'PI', :nome => "Piauí")
    e.save

    e = Estado.create(:UF => 'PR', :nome => "Paraná")
    e.save

    e = Estado.create(:UF => 'RJ', :nome => "Rio de Janeiro")
    e.save

    e = Estado.create(:UF => 'RN', :nome => "Rio Grande do Norte")
    e.save

    e = Estado.create(:UF => 'RO', :nome => "Rondônia")
    e.save

    e = Estado.create(:UF => 'RR', :nome => "Roraima")
    e.save

    e = Estado.create(:UF => 'RS', :nome => "Rio Grande do Sul")
    e.save

    e = Estado.create(:UF => 'SC', :nome => "Santa Catarina")
    e.save

    e = Estado.create(:UF => 'SE', :nome => "Sergipe")
    e.save

    e = Estado.create(:UF => 'SP', :nome => "São Paulo")
    e.save

    e = Estado.create(:UF => 'TO', :nome => "Tocantins")
    e.save
  end

  def self.down
    Estado.delete_all
  end
end