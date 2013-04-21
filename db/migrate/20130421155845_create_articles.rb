class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string     :title
      t.references :type,       index: true
      t.text       :content
      t.references :created_by, index: true
      t.references :updated_by, index: true

      t.timestamps
    end
  end
end
