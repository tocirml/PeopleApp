class AddAttributeToPerson < ActiveRecord::Migration
  def change
    add_column :people, :first_name, :string
    add_column :people, :last_name, :string
    add_column :people, :email, :string
    add_column :people, :job, :string
    add_column :people, :bio, :Text
    add_column :people, :gender, :string
    add_column :people, :picture, :string
    add_column :people, :birthday, :date
  end
end
