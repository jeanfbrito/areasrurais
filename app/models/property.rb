class Property < ActiveRecord::Base

  include I18n::Alchemy
  localize :value, using: :number

  has_many :pictures
  belongs_to :district

  def get_cover
  	#cover = pictures.where(property_id: id, cover: true).first
    cover = pictures.where(property_id: id).first #just to dev tests
    if cover
      return cover
    end
    false
  end

end