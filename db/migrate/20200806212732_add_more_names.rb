class AddMoreNames < ActiveRecord::Migration[5.0]
  def change
    Name.create(name: 'ash dynamic add. check for duplicate')
  end
end
