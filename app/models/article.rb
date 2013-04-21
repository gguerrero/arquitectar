class Article < ActiveRecord::Base
  validates_presence_of   :title, :content, :type, :created_by
  validates_uniqueness_of :title, case_sensitive: false

  belongs_to :type
  belongs_to :created_by, class_name: "User"
  belongs_to :updated_by, class_name: "User"

  def html_content
    BlueCloth.new(self.content).to_html
  end
end
