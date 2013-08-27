class CreateUrls < ActiveRecord::Migration
  def up
    create_table :urls do |t|
      t.string :original_url, :shortened_url
      t.timestamps
    end
  end

  def down
    drop_table :urls
  end
end
