class Prospecto < ActiveRecord::Base
  validates_presence_of :nome
  belongs_to :estado
  has_many :historicoprospectos
  
  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}
  validates_format_of :telefone, :with =>  /\d[0-9]\)*\z/

  has_attached_file :anexo
  validates_attachment_content_type :anexo, :content_type => ['image/jpg','image/jpeg','image/pjpeg','image/png',
  		'image/x-png','image/gif','application/pdf','application/msword', 
  		'application/vnd.openxmlformats-officedocument.wordprocessingml.document']
end