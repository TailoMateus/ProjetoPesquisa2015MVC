class CreateHistoricoprospectos < ActiveRecord::Migration
  def change
    create_table :historicoprospectos do |t|
      t.string :descricao

      t.references :prospecto
      t.references :situacao
    
      t.timestamps null: false
    end
  end
end
