class AddAttachmentAnexoToHistoricoprospectos < ActiveRecord::Migration
  def self.up
    change_table :historicoprospectos do |t|
      t.attachment :anexo
    end
  end

  def self.down
    remove_attachment :historicoprospectos, :anexo
  end
end
