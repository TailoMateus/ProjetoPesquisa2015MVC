class AddFuncaoToUsuarios < ActiveRecord::Migration
  def change
  	add_column :usuarios, :funcao, :string, :default => ""
  end
end
