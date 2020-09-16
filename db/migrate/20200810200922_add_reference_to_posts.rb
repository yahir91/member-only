class AddReferenceToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :member, foreign_key: true
  end
end
