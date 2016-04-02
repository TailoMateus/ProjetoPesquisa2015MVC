class Historicoprospecto < ActiveRecord::Base
	belongs_to :situacao
	belongs_to :prospecto
end
