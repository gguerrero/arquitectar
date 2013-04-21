class Type < ActiveRecord::Base
  validates_presence_of   :name
  validates_uniqueness_of :name,        case_sensitive: false
  validates               :description, length: { maximum: 1000 }

  def t_name
    I18n.t(name, scope: [:activerecord, :types])
  end
end
