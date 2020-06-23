class Image < ApplicationRecord
	has_one_attached :foto

	validates :description, presence: true
	validate :foto_validator

	belongs_to :user

	private
	  def foto_validator
	  	if !foto.attached?
	  		errors.add(:foto,"Es requerido")
	  	elsif foto.content_type.in?(%w(foto/png foto/jpeg))
	  		errors.add(:foto,'Debe ser un formato imagen')		
	  	end	  	
	  end
end
