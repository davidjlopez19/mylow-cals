class CreateAddUseridToPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :add_userid_to_photos do |t|

      t.timestamps
    end
  end
end
