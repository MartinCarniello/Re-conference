migration 2, :create_accounts do
  up do
    create_table :accounts do
      column :id, Integer, :serial => true
      column :nombre, DataMapper::Property::String, :length => 255
      column :password, DataMapper::Property::String, :length => 255
      column :email, DataMapper::Property::String, :length => 255
      column :role, DataMapper::Property::String, :length => 255
    end
  end

  down do
    drop_table :accounts
  end
end
