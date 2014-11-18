migration 2, :create_usuarios do
  up do
    create_table :usuarios do
      column :id, Integer, :serial => true
      column :nombre, DataMapper::Property::String, :length => 255
      column :password, DataMapper::Property::String, :length => 255
      column :email, DataMapper::Property::String, :length => 255
      column :rol, DataMapper::Property::String, :length => 255
    end
  end

  down do
    drop_table :usuarios
  end
end
